class AddColumnToOutfit < ActiveRecord::Migration
  def change
    add_column :outfits, :price, :string
  end
end
