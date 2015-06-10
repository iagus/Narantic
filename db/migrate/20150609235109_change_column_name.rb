class ChangeColumnName < ActiveRecord::Migration
  def change
    rename_column :tickets, :urgencies_id, :urgency_id
  end
end
