class AddNmaeToOutfits < ActiveRecord::Migration
  def change
    add_column :outfits, :name, :text
  end
end
