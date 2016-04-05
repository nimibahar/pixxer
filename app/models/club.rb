class Club < ActiveRecord::Base
  mount_uploader :photo, PhotoUploader
  belongs_to :owner
end
