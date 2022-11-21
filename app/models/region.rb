class Region < ApplicationRecord
  has_many :cities
  has_many :districts, through: :cities
  has_many :locations
end
