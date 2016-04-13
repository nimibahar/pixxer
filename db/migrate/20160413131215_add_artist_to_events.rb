class AddArtistToEvents < ActiveRecord::Migration
  def change
    add_column :events, :artist, :string
  end
end
