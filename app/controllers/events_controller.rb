class EventsController < ApplicationController
  def index
    @club = Club.find(params[:club_id])
    @events = @club.events

  end

  def show
    @event = Event.find(params[:id])
    @club = @event.club
  end

  def new
  end

  def create
  end

  def edit
  end

  def update
  end

  def destroy
  end
end
