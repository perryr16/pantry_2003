require 'minitest/autorun'
require 'minitest/pride'
require 'pry'
require './lib/ingredient'
require './lib/pantry'

class PantryTest < MiniTest::Test

  def test_it_exists
    pantry = Pantry.new
    assert_instance_of Pantry, pantry
  end

  def test_it_returns_stock
    pantry = Pantry.new
    assert_equal ({}), pantry.stock
  end

end

#
#ingredient2 = Ingredient.new("Macaroni", "oz", 200)
# # => #<Ingredient:0x007fd88582ed98...>
#
# # => #<Pantry:0x007fd8858863b8...>
#
#pantry.stock
# # => {}
#
#pantry.stock_check(ingredient1)
# # => 0
#
#pantry.restock(ingredient1, 5)
#
#pantry.restock(ingredient1, 10)
#
#pantry.stock_check(ingredient1)
# # => 15
#
#pantry.restock(ingredient2, 7)
#
#pantry.stock_check(ingredient2)
# # => 7
