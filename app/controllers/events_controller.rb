class EventsController < ApplicationController

  before_action :event, only: [:show, :edit, :destroy, :update]

  def index
    if current_owner
      @events = Event.where(params[:club_id])
    else
      @events = Event.all
    end
  end

  def show
  end

  def new
    @event = Event.new
  end

  def create
    @event = Event.new(event_params)
    if @event.save
      raise
      @event.photos.create(
        photo:       params[:event][:photo][:photo],
        photo_cache: params[:event][:photo][:photo_cache]
      )
      redirect_to event_path(@event)
    else
      render :new
    end
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def event
    @event = Event.find(params[:id])
  end

  def club
    @club = Club.find(params[:club_id])
  end

  def event_params
    params.require(:event).permit(:starts_at, :description, :dress_code, :club_id, :photo, :photo_cache)
  end

end
