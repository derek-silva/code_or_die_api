class UsersController < ApplicationController
	def index
		users = User.all
		render json: users
	end
	
	def show 
		user = User.find(params[:id])
		meetups = {user: user, meetups: user.meetups}
		render json: meetups
	end 

	def create
		find_user = User.find_by(user_name: params[:user_name])
		if find_user
			render json: find_user 
		else
			user = User.new(user_params)
			if user.valid?
				user.save
				render json: user
			else render json: user.errors
			end
		end
	end 

	private 
	def user_params 
		params.require(:user).permit(:first_name, :last_name, :user_name, :email, :meetup_id)
	end 
end
