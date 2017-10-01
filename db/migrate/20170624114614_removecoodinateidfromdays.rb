class Removecoodinateidfromdays < ActiveRecord::Migration
  def change
    remove_column :days, :coodinate_id, :string
    add_column :days, :coordinate_id, :string
  end
end
