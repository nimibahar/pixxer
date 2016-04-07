class Event < ActiveRecord::Base
  belongs_to :club
  delegate :owner, to: :club
  mount_uploader :photo, PhotoUploader
  has_many :photos
  has_many :tables
end
