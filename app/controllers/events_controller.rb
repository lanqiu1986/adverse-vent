class EventsController < ApplicationController
  def index
    @events = Event.all
  end

  def new
    @event = Event.new
  end

  def create
    @event = Event.new(event_params)
    @event.save

    redirect_to events_path
  end

  def show
    @event = Event.find(params[:id])
  end

  def edit
    @event = Event.find(params[:id])
  end

  def update
    @event = Event.find(params[:id])
    @event.update(event_params)
    redirect_to events_path, notice: "Update Success"
  end

  def destroy
    @event = Event.find(params[:id])
    @event.destroy
    flash[:alert] = "Event deleted"
    redirect_to events_path
  end

  def event_params
    params.require(:event).permit(:department, :title, :description)
  end
end
