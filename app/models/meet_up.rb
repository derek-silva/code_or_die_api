class MeetUp < ApplicationRecord
	has_many :user_meet_ups
	has_many :users, through: :user_meet_ups

	validates :name, :topic, :address, :time, presence: true

end
