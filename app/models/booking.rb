class Booking < ActiveRecord::Base
  belongs_to :user
  belongs_to :table

  def new_from_table(table)
    self.status = "Hosted"
    self.price = self.seats * table.per_seat
    self.table_id = table.id
  end
end
