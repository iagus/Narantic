class ChangeReferencesInTasks < ActiveRecord::Migration
  def change
    change_column :tasks, :ticket_id, :integer
  end
end
