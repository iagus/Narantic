class AddDateToBookings < ActiveRecord::Migration
  def change
    add_column :bookings, :start, :date
    add_column :bookings, :end, :date
  end
end
