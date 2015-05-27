class Ticket < ActiveRecord::Base
  belongs_to :user
  has_one :user
  has_one :urgency
end
