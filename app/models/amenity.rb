class Amenity < ApplicationRecord
  belongs_to :spot
  validates :category, presence: true
end
