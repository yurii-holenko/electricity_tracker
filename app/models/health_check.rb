class HealthCheck < ApplicationRecord
  belongs_to :location


  def region
    location.region&.name
  end

  def city
    location.city&.name
  end

  def ip
    location.ip_address
  end

  def date_time
    created_at.iso8601
  end


  def self.to_csv
    attributes = %w[region city ip success date_time]

    CSV.generate(headers: true) do |csv|
      csv << attributes

      all.each do |contact|
        csv << attributes.map{ |attr| contact.send(attr) }
      end
    end
  end
end
