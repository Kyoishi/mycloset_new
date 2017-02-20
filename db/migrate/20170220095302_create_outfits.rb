class CreateOutfits < ActiveRecord::Migration
  def change
    create_table :outfits do |t|
      t.string    :brand
      t.datetime  :date
      t.string    :category
      t.string    :sub_category
      t.timestamps
    end
  end
end
