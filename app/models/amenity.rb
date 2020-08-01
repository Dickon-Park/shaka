class Amenity < ApplicationRecord
  belongs_to :spot
  validates :longitude, :latitude, :category, :description, presence: true
end
