class Task < ActiveRecord::Base
  belongs_to :ticket
  has_one :urgency
end
