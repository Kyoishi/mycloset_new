class CreateCoordinates < ActiveRecord::Migration
  def change
    create_table :coordinates do |t|
      t.references :day, index: true, foreign_key: true
      t.references :outfit, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
