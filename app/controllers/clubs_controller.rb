class ClubsController < ApplicationController

  before_action :club, only: [:show, :edit, :destroy, :update]

  def index
    if current_owner
      @clubs = current_owner.clubs
    else
      if params[:city] == ""
        params[:city] == "Las Vegas"
      end
      @clubs = Club.where(city: params[:city])
    end
  end

  def new
    @club = Club.new
  end
  def create
    @club = Club.new(club_params)
    if @club.save
      @club.photos.create(
        photo:       params[:club][:photo][:photo],
        photo_cache: params[:club][:photo][:photo_cache]
      )
      redirect_to club_path(@club)
    else
      render :new
    end
  end

  def show
    @events = Event.all
  end

  def edit
  end

  def update
    @club.update_attributes(club_params)
    if @club.save
      @club.photos.create(
        photo:       params[:club][:photo][:photo],
        photo_cache: params[:club][:photo][:photo_cache]
      )
      redirect_to club_path(@club)
    else
      render :new
    end
  end


  private

  def club
    @club = Club.find(params[:id])
  end

  def club_params
    params.require(:club).permit(:name, :address, :city, :description,
     :owner_id, :photo, :photo_cache)
  end
end
