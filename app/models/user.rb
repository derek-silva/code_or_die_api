class User < ApplicationRecord
	has_many :user_meet_ups
	has_many :meet_ups, through: :user_meet_ups

	validates :first_name, :last_name, :user_name, :email, presence: true
end
