class Review < ApplicationRecord
  belongs_to :spot
  belongs_to :user

  validates :message, :rating, presence: true
end
