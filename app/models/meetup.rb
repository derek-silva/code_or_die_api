class Meetup < ApplicationRecord
	has_many :user_meetups
	has_many :users, through: :user_meetups

	validates :topic, :address, :description, :date, :start_time, :end_time, presence: true
end
