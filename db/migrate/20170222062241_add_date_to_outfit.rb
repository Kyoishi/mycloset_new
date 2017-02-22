class AddDateToOutfit < ActiveRecord::Migration
  def change
    add_column :outfits, :year, :string
  end
end
