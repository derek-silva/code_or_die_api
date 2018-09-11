class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
	has_many :user_meet_ups
	has_many :meet_ups, through: :user_meet_ups

	validates :first_name, :last_name, :user_name, :email, :bio, presence: true
end
