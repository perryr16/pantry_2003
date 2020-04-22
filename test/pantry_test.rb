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

  def test_it_checks_and_stocks
    pantry = Pantry.new
    ingredient1 = Ingredient.new({name: "Cheese", unit: "oz", calories: 50})
    # ingredient2 = Ingredient.new("Macaroni", "oz", 200)
    assert_equal 0, pantry.stock_check(ingredient1)
    pantry.restock(ingredient1, 5)
    pantry.restock(ingredient1, 10)
    assert_equal 15, pantry.stock_check(ingredient1)



  end



end

#
# # => #<Ingredient:0x007fd88582ed98...>
#

#
# # => 0
#
#
#
# # => 15
#
#pantry.restock(ingredient2, 7)
#
#pantry.stock_check(ingredient2)
# # => 7
