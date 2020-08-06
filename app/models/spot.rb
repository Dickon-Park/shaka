class Spot < ApplicationRecord
    has_many_attached :photos
    has_many :amenities
    has_many :reviews, dependent: :destroy
    validates :name, presence: true, uniqueness: true
    validates  :address, :longitude, :latitude, :skill_level, :disciplines, presence: true
end
