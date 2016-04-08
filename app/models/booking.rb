class Booking < ActiveRecord::Base
  belongs_to :user
  belongs_to :table

  validates_numericality_of :seats, greater_than: 0
  #validates_numericality_of :seats, less_than_or_equal_to: 0
  #validates_length_of :seats, within: 1..self.table.available_seats, too_short: "minimuml booking & pax", too_long: "table is not that big"

  def new_from_table(table)
    self.status = "Hosted"
    self.price = self.seats * table.per_seat
    self.table_id = table.id
  end
end
