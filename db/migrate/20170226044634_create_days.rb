class CreateDays < ActiveRecord::Migration
  def change
    create_table :days do |t|
      t.string :day
      t.integer :user_id
      t.timestamps null: false
    end
  end
end
