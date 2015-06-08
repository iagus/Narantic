class StaticController < ApplicationController
  before_action :authenticate_user!
  def index
    @user = User.last
    @ticket = Ticket.last
    @resource = Resource.last
    @booking = Booking.last
  end
end
