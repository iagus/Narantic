class ChangeRoleColumn < ActiveRecord::Migration
  def change
    change_column :roles, :role, :string
  end
end
