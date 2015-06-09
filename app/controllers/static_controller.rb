class StaticController < ApplicationController
  before_action :authenticate_user!
  def index
    @users = User.last(3)
    @tickets = Ticket.last(3)
    @resources = Resource.last(3)
    @bookings = Booking.last(3)
  end
end
