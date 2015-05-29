class Ticket < ActiveRecord::Base
  belongs_to :user
  has_one :urgency
end
