class MeetupsController < ApplicationController
	def index
		meetUps = MeetUp.all
		render json: meetUps
	end
	
	def show 
		meetUp = MeetUp.find(params[:id])
		render json: meetUp
	end 

	def create
		meetUp = MeetUp.new({topic: params[:topic], address: params[:address], description: params[:description], date: params[:date], start_time: params[:start_time], end_time: params[:end_time]})
		if meetUp.valid?
			m = meetUp.save
			UserMeetUp.create(user_id: params[:user], meet_up_id: MeetUp.all.last.id)
			render json: meetUp
		else render json: meetUp.errors
		end
	end 

	private 
	def meetUp_params
		params.permit(:topic, :address, :description, :date, :start_time, :end_time, :user)
	end 
end
