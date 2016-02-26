class UserfolloweventsController < ApplicationController
  def index
  	@events = current_user.userevents
  end

  def create
  	@event = Event.find(params[:event_id])
  	current_user.userevents << @event
  	respond_to do |format|
  	  format.html { redirect_to :back}
  	  format.js
  	end
  end
  def destroy
  	@event = Event.find(params[:event_id])
  	current_user.userfollowevents.find_by(event: @event).destroy
  	respond_to do |format|
  		format.html { redirect_to :back}
  		format.js
  	end
  end
end