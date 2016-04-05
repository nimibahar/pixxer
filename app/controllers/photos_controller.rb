class PhotosController < ApplicationController
  def create
    p = Photo.new(photo_params)
    club = Club.find(params[:club_id])
    p.club_id = club.id
    p.save
    redirect_to club_path(club)
  end

  def photo_params
    params.require(:photo).permit(:club_id, :photo, :photo_cache)
  end
end
