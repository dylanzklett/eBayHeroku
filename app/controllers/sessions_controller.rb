class SessionsController < ApplicationController
  def new
	end

	def create
		@user = User.find_by_email(params[:email])
		if current_user != nil
			flash[:notice] = "Mutliple users cannot be signed in. Please log out first."
			redirect_to root_path
		elsif @user && @user.authenticate(params[:password])
			session[:user_id] = @user.id
			redirect_to user_path(@user), :notice => "Welcome back!"
		else
			flash[:notice] = "Invalid email or password."
			redirect_to root_path
		end
	end
	def destroy
		@user = User.find(params[:id])
		if @user
			session.clear
			redirect_to root_path
		else
			flash[:notice] = "Couldn't log you out, try again."
			redirect_to user_path
		end
	end
end
