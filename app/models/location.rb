class Location < ApplicationRecord
  belongs_to :region, optional: true
  belongs_to :city, optional: true
  belongs_to :district, optional: true

  has_many :health_checks


  validates :ip_address, uniqueness: true
end
