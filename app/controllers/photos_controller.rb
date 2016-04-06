class PhotosController < ApplicationController
  def create
    raise
    p = Photo.new(photo_params)
    if
  end

  private

  def create_photo_for_club
    club = Club.find(params[:club_id])
    p.club_id = club.id
    p.save
    redirect_to club_path(club)
  end

  def create_photo_for_event
    event = Event.find(params[:event_id])
    p.event_id = event.id
    p.save
    redirect_to event_path(event)
  end

  def photo_params
    params.require(:photo).permit(:club_id, :photo, :photo_cache)
  end
end
