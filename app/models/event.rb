class Event < ActiveRecord::Base
  belongs_to :club
  has_many :photos
end
