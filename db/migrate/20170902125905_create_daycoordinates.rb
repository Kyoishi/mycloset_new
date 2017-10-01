class CreateDaycoordinates < ActiveRecord::Migration
  def change
    create_table :daycoordinates do |t|
      t.integer        :coordinate_id
      t.integer        :day_id
      t.integer        :user_id
      t.timestamps null: false
    end
  end
end
