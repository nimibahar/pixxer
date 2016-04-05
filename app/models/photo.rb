class Photo < ActiveRecord::Base
  mount_uploader :photo, PhotoUploader
  belongs_to :club
  belongs_to :event
end
