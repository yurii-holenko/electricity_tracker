class City < ApplicationRecord
  belongs_to :region, optional: true
  has_many :districts
  has_many :locations
end
