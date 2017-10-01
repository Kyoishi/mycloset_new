class CreateCategories < ActiveRecord::Migration
  def change
    create_table :categories do |t|
      t.string         :name
      t.integer        :parent_id
      t.integer        :display_order
      t.timestamps
    end
  end
end
