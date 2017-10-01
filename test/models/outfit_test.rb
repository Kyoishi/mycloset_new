require 'test_helper'

class OutfitTest < ActiveSupport::TestCase
  test "outfit save" do 
    outfit = Outfit.new({
      brand: 'Ralph Lauren',
      category_id: 1,
      user_id: 7,
      name: 'ジャケット',
      year: '2017',
      price: 100000,
      })
    assert outfit.save, 'Failed to save'
    
  end
end
