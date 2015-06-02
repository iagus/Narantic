class StaticController < ApplicationController
  before_action :authenticate_user!
  def index
    @user = User.first
    @ticket = Ticket.first
    @resource = Resource.first
  end
end
