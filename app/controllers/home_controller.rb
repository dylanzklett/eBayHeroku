class HomeController < ApplicationController
  def index
  	@user = User.new
  	@user1 = User.new
  end
end
