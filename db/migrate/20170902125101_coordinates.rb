class Coordinates < ActiveRecord::Migration
  def change
    drop_table :coordinates
  end
end
