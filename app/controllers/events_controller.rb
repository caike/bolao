class EventsController < ApplicationController
  def upcoming
    event = Event.upcoming
    redirect_to event_path event
  end

  def show
    @event = Event.upcoming
    @categories = @event.categories
  end
end
