class MeetUp < ApplicationRecord
	has_many :user_meet_ups
	has_many :users, through: :user_meet_ups

	validates :topic, :address, :description, :date, :start_time, :end_time, presence: true
end
