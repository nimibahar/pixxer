class CreateBookings < ActiveRecord::Migration
  def change
    create_table :bookings do |t|
      t.integer :seats
      t.integer :price
      t.string :description
      t.string :status
      t.references :user, index: true, foreign_key: true
      t.references :table, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
