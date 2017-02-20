class AddRateToOutfits < ActiveRecord::Migration
  def change
    add_column :outfits, :image_url, :text
  end
end
