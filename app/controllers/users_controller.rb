class UsersController < ApplicationController
	#list of all users for admin only
	def index
	end

###################################################################################

	#landing page for the app - instructions and pull up barcode scanner button
	def welcome
	end

	#user profile page - items bid, items won, etc
	def show
	end

	def new
	end

	def create
		user = User.new(user_params)
		if user.save
			session[:user_id] = user.id
      redirect_to action: 'welcome', controller: 'users'
		else
			@errors = user.errors.full_messages
			render '/users/new'
		end
	end

	private

  def user_params
    params.require(:user).permit(:username, :email, :password, :password_confirmation)
  end

end