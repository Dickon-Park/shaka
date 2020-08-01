class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  has_many :favourites

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  #validates :first_name, :last_name, :discipline, :skill_level, presence: true
end
