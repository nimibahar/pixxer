class Club < ActiveRecord::Base
  validates :name, uniqueness: true, presence: true
  mount_uploader :photo, PhotoUploader
  belongs_to :owner
  has_many :events
end
