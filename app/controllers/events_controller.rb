class EventsController < ApplicationController
  def index
  	@AdminEvents = Event.where(admin:true)
    @LocalEvents = Event.where(admin:nil)
  end
  def new
  	@event = Event.new
  end
  def create
  	@event = Event.create(event_params)
    @event.user_id = current_user.id
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

  def destroy
    @event = Event.find(params[:id])
    if @event.destroy
      redirect_to events_path
    else
      flash[:notice] = "Couldn't remove that event. Check your admin privileges."
      redirect_to events_path
    end
  end


  private
  def event_params
  	params.require(:event).permit(:location, :venue, :event_type, :event_name, :admin, :format, :date, :notes)
  end
end
