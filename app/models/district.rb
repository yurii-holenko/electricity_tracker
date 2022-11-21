class District < ApplicationRecord
  belongs_to :city
  has_many :locations
end
