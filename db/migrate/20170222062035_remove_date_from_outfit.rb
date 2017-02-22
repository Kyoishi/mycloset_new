class RemoveDateFromOutfit < ActiveRecord::Migration
  def change
    remove_column :outfits, :date, :datetime
  end
end
