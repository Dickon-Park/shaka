class Amenity < ApplicationRecord
  belongs_to :spot
  validates :category, :descripton, presence: true
end
