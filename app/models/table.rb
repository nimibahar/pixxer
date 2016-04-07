class Table < ActiveRecord::Base
  belongs_to :event
  belongs_to :user
  has_many :bookings

  def new_availability(seats)
    self.seats = self.seats - seats
    self.payment_status = "Hosted"
    self.save
  end
end
