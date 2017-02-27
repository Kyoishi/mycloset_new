class Coordinate < ActiveRecord::Base
  belongs_to :day
  belongs_to :outfit
end
