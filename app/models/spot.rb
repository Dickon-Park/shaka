class Spot < ApplicationRecord
    belongs_to :user
    has_many_attached :photos
    has_many :amenities, dependent: :destroy
    has_many :reviews, dependent: :destroy
    has_many :favourites
    geocoded_by :address
    after_validation :geocode, if: :will_save_change_to_address?
    validates :name, presence: true, uniqueness: true
    validates  :address, :skill_level, :disciplines, presence: true
end
