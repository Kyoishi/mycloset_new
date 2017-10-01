class RemoveCoordinateIdFromDays < ActiveRecord::Migration
  def change
    remove_column :days, :coordinate_id, :varchar
    add_column :days, :coordinate_id, :integer
  end
end
