class PingJob < ApplicationJob
  queue_as :default

  def perform
    Location.all.each do |location|
      CreateHealthCheck.new(location).perform
    end
  end
end
