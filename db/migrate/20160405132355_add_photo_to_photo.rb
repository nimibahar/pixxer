class AddPhotoToPhoto < ActiveRecord::Migration
  def change
    add_column :photos, :photo, :string
    add_column :photos, :photo_cache, :string
  end
end
