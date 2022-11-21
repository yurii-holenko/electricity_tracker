class City < ApplicationRecord
  belongs_to :region
  has_many :districts
  has_many :locations
end
