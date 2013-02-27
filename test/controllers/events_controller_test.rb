require 'test_helper'

class EventsControllerTest < ActionController::TestCase

  test 'Upcoming redirects to upcoming' do
    upcoming_event = create_upcoming_event
    get :upcoming
    assert_redirected_to event_path(upcoming_event)
  end

  test 'Upcoming redirects to recent' do
    recent_event = create_recent_event
    get :upcoming
    assert_redirected_to event_path(recent_event)
  end


  private

  def create_upcoming_event
    @upcoming ||= Event.where(airs_on: 1.day.from_now).first_or_create
  end

  def create_recent_event
    @recent ||= Event.where(airs_on: 1.day.ago).first_or_create
  end
end
