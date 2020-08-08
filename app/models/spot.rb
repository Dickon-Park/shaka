class Spot < ApplicationRecord
    has_many_attached :photos
    has_many :amenities
    has_many :reviews, dependent: :destroy
    geocoded_by :address
    after_validation :geocode, if: :will_save_change_to_address?
    validates :name, presence: true, uniqueness: true
    validates  :address, :skill_level, :disciplines, presence: true
end
