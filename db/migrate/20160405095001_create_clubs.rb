class CreateClubs < ActiveRecord::Migration
  def change
    create_table :clubs do |t|
      t.string :address
      t.string :city
      t.string :description
      t.references :owner, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
