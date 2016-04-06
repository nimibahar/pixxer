class Club < ActiveRecord::Base
  validates :name, uniqueness: true, presence: true
  belongs_to :owner
  has_many :events

  has_many :photos
end
