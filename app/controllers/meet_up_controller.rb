class MeetupsController < ApplicationController
	def index
		meetUps = MeetUp.all
		render json: meetUps
	end
	
	def show 
		meetUp = MeetUp.find(params[:id])
		render json: meetup
	end 

	def create 
		meetUp = MeetUp.new(meetUp_params)
		if meetUp.valid?
			meetUp.save
			render json: meetUp
		else render json: meetUp.errors
		end
	end 

	private 
	def meetUp_params 
		params.require(:meetUp).permit(:name, :topic, :address, :description, :date, :start_time, :end_time)
	end 
end
