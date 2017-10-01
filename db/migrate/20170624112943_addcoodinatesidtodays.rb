class Addcoodinatesidtodays < ActiveRecord::Migration
  def change
    add_column :days, :coodinate_id, :string
  end
end
