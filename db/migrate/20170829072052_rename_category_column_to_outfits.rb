class RenameCategoryColumnToOutfits < ActiveRecord::Migration
  def change
    rename_column :outfits, :category, :category_id
  end
end
