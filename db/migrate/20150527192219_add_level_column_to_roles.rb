class AddLevelColumnToRoles < ActiveRecord::Migration
  def change
    add_column :roles, :role, :integer
  end
end
