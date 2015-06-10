class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.belongs_to :ticket

      t.timestamps null: false
    end
  end
end
