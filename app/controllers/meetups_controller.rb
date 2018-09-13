class MeetupsController < ApplicationController
	def index
		meetups = Meetup.all
		render json: meetups
	end
	
	def show 
		meetup = Meetup.find(params[:id])
		render json: meetup
	end 

	def create
		meetup = Meetup.new(meetup_params)
		if meetup.save
			meetup.users << User.find(params[:user_id]) 
			render json: meetup
		else render json: meetup.errors
		end
	end 

	private 
	def meetup_params
		params.permit(:topic, :address, :description, :date, :start_time, :end_time)
	end 
end
