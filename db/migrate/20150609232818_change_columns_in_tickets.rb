class ChangeColumnsInTickets < ActiveRecord::Migration
  def change
    add_reference :tickets, :urgencies
  end
end
