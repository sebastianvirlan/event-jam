class EventsController < ApplicationController
  before_action :authenticate_user!, :except => [:show, :index]

  # list all events (homepage)
  def index
    @events = Event.all
  end

  # list all events (homepage)
  def my_events
    @events = Event.where(creator_id: current_user.id)
    render 'events/index'
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
    sleep(rand 1..3)
    if @event = Event.create(event_params.merge(creator_id: current_user.id))
      redirect_to topics_path
    else
      render :new
    end
  end

# user editing an event
  def edit
    @event = Event.find(params[:id])
  end

# user updating event
  def update
    @event = Event.find(params[:id])
    @event.update(event_params)
    redirect_to event_path(@event)
  end

# user destroying an event
  def destroy
    @event = Event.find(params[:id])
    @event.destroy
  end

  private

  def event_params
    params.require(:event).permit(:title, :description, :price, :topic_id)
  end
end
