class Day < ActiveRecord::Base
  has_many :coordinates
  has_many :outfits, :through => :coordinates, dependent: :destroy
  belongs_to :user

end
