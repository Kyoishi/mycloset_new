class Day < ActiveRecord::Base
  belongs_to :newcoordinate
  belongs_to :user
  belongs_to :daycoordinate

  paginates_per 7
end
