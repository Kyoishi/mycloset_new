class RemoveUseridFromDays < ActiveRecord::Migration
  def change
    remove_column :days, :user_id, :integer
    remove_column :days, :coordinate_id, :integer
  end
end
