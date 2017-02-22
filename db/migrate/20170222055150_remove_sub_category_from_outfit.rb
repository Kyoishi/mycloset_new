class RemoveSubCategoryFromOutfit < ActiveRecord::Migration
  def change
    remove_column :outfits, :sub_category, :string
  end
end
