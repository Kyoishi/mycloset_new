class RemoveDayFromDays < ActiveRecord::Migration
  def change
    remove_column :days, :day, :string
  end
end
