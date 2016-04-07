class BookingsController < ApplicationController
  def new
    @club = Club.find(params[:club_id])
    @event = Event.find(params[:event_id])
    @table = Table.find(params[:table_id])
    @booking = Booking.new
  end

  def create
    table = Table.find(params[:booking][:table_id])

    booking = Booking.new(booking_params)
    table.new_availability(booking.seats)
    #booking.new_from_table(seats)
    booking.price = booking.seats * table.per_seat
    booking.status = "Hosted"
    booking.user_id = current_user.id
    booking.table_id = table.id
    if booking.save
      redirect_to table_path(table)
    else
      render :new
    end
  end

  def destroy
  end

  def booking_params
    params.require(:booking).permit(:seats, :description, :table_id)
  end
end
