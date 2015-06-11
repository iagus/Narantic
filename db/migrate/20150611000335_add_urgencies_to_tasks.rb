class AddUrgenciesToTasks < ActiveRecord::Migration
  def change
    add_column :tasks, :urgency_id, :integer
  end
end
