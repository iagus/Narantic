class Booking < ActiveRecord::Base
  belongs_to :resource
  belongs_to :user

  validates_presence_of :start, :end
end
