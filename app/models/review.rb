class Review < ApplicationRecord
  belongs_to :spot
  belongs_to :user

  validates :message, presence: true
end
