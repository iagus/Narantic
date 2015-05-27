class CreateTickets < ActiveRecord::Migration
  def change
    create_table :tickets do |t|
      t.string :title
      t.text :description
      t.datetime :created_at

      t.belongs_to :user, index: true
      t.references :user, index: true
      t.references :urgency
    end
  end
end
