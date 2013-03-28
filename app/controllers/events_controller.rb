class EventsController < ApplicationController
	def index
		@events = Event.all	
	end

  def upcoming
    closest_event = (Event.upcoming || Event.most_recent)
    redirect_to event_path(closest_event)
  end

  def show
    @event = Event.find(params[:id])
    @categories = @event.categories
  end
end
