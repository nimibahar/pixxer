class CreateTables < ActiveRecord::Migration
  def change
    create_table :tables do |t|
      t.integer :seats
      t.integer :available_seats
      t.integer :price
      t.integer :per_seat
      t.string :payment_status
      t.string :prefrerences
      t.string :promotion
      t.references :event, index: true, foreign_key: true
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
