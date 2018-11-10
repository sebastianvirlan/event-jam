class EventsController < ApplicationController
  # list all events (homepage)
  def index
    @events = Event.all
  end

# show one event
  def show
    @event = Event.find(params[:id])

  end

# new instance of event
  def new
    @event = Event.new
  end

# user creating an event
  def create
    @event = Event.new
  end

# user editing an event
  def edit
    @event = Event.find(params[:id])
  end

# user updating event
  def update
    @event = Event.find(params[:id])
    @event.update(permits)
    redirect_to event_path(@event)
  end

# user destroying an event
  def destroy
    @event = Event.find(params[:id])
  end

  private

  def permits
  end
end
