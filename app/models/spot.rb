class Spot < ApplicationRecord
    has_many :amenities
    validates :name, presence: true, uniqueness: true
    validates :longitude, :latitude, :skill_level, :disciplines, presence: true
end
