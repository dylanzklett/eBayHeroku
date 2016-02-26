class EventsController < ApplicationController
  def index
  	@AdminEvents = Event.where(admin:true)
    @LocalEvents = Event.where(admin:false)
  end
  def new
  	@event = Event.new
  end
  def create
  	@event = Event.create(event_params)
  	if @event.save
  		redirect_to events_path
  	else
  		flash[:notice] = "Couldn't create that event. Try again?"
  		redirect_to new_event_path
  	end
  end

  def show 
    @event = Event.find(params[:id])
  end


  private
  def event_params
  	params.require(:event).permit(:location, :venue, :event_type)
  end
end
