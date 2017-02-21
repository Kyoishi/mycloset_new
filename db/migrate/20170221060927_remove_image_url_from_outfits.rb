class RemoveImageUrlFromOutfits < ActiveRecord::Migration
  def change
    remove_column :outfits, :image_url, :text
  end
end
