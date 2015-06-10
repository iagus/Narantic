class Ticket < ActiveRecord::Base
  belongs_to :user
  has_one :urgency
  has_many :tasks, dependent: :destroy
end
