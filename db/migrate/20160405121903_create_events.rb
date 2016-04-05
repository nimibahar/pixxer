class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.datetime :starts_at
      t.string :description
      t.string :type
      t.string :dress_code
      t.references :club, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
