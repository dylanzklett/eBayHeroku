class UsersController < ApplicationController
  def index
  end
  def new
  	@user = User.new
  end
  def create
  	@user = User.create(user_params)
  	if @user.save
  		session[:user_id] = @user.id
  		flash[:notice] = "Welcome!"
  		redirect_to	user_path(@user)
  	else
  		flash[:notice] = "There was an error creating your account. Try again."
  		render "new"
  	end
  end

  def show
  	@user = User.find(params[:id])
  end

  def edit
  	@user = User.find(params[:id])
  end
  def update
  	@user = User.find(params[:id])
  	if @user
  		@user.update(user_params)
  		@user.save
  		redirect_to user_path
  	end
  end
  def destroy
  	@user = User.find(params[:id])
  	if @user 
  		@user.destroy
  		session.destroy
  		flash[:notice] = "User Deleted."
  		redirect_to root_path
  	end
  end

  private
  def user_params
  	params.require(:user).permit(:email, :password)
  end

end
