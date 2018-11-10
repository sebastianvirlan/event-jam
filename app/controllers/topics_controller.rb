class TopicsController < ApplicationController
  # list all topics (homepage)
  def index
    @topics = Topic.all
  end

  # show one event
  def show
    sleep(rand 3..5)
    @topic = Topic.find(params[:id])
    @events = @topic.events
  end
end
