class User < ApplicationRecord
	has_many :user_meet_ups
	has_many :meet_ups, through: :user_meet_ups

	validates :name, :email, :bio, presence: true
end
