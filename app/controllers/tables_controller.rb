class TablesController < ApplicationController
  before_action :table, only: [:show, :edit, :destroy, :update, :host]

  def create
    table = Table.new(table_params)
    table.event_id = params[:event]
    table.available_seats = table.seats
    table.per_seat = table.price / table.seats
    table.payment_status = "Free"
    if table.save
      redirect_to table_path(table)
    else
      render :new
    end
  end

  def new
    @table = Table.new
  end

  def edit
  end

  def update
  end

  def show
    @club = Club.find(params[:club_id])
    @event = Event.find(params[:event_id])
  end

  def index
    @club = Club.find(params[:club_id])
    @event = Event.find(params[:event_id])
    @tables = @event.tables
  end

  def destroy
  end

  private

  def table
    @table = Table.find(params[:id])
  end

  def table_params
    params.require(:table).permit(:seats, :available_seats, :price, :per_seat,
      :payment_status, :preferences, :event_id, :user_id)
  end
end
