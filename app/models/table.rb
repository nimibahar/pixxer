class Table < ActiveRecord::Base
  belongs_to :event
  belongs_to :user
  has_many :bookings

  def new_availability(seats, user_id)
    self.available_seats = self.available_seats - seats
    if self.available_seats == 0
      self.payment_status = "Full"
    else
    self.payment_status = "Hosted"
    end
    self.user_id = user_id
    self.save
  end
end
