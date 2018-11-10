class TopicsController < ApplicationController
  # list all topics (homepage)
  def index
    @topics = Topic.all
  end

  # show one event
  def show
    @topic = Topic.find(params[:id])
    @events = @topic.events
  end
end
