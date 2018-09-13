class User < ApplicationRecord
	has_many :user_meetups
	has_many :meetups, through: :user_meetups

	validates :first_name, :last_name, :user_name, :email, presence: true
end
