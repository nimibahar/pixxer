class ClubsController < ApplicationController

  before_action :club, only: [:show, :edit, :destroy, :update]

  def index
    @clubs = Club.all
  end

  def new
    @club = Club.new
  end

  def show

  end

  private

  def club
    @club = Club.find(params[:id])
  end

  def club_params
    params.require(:club).permit(:name :address, :city, :description :owner_id)
  end
end
