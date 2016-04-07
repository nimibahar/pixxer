class Event < ActiveRecord::Base
  belongs_to :club
  delegate :owner, to: :club
  mount_uploader :photo, PhotoUploader
  has_many :photos
  has_many :tables


  def cheapest_table
    cheapest = 100000000000000
    self.tables.each do |table|
      cheapest = table.price if table.price<cheapest
    end
    cheapest.to_s
  end
end
