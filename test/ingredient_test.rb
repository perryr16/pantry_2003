require 'minitest/autorun'
require 'minitest/pride'
require 'pry'
require './lib/ingredient'

class IngredientTest < MiniTest::Test

  def test_it_exists
    ingredient1 = Ingredient.new({name: "Cheese", unit: "oz", calories: 50})
    assert_instance_of Ingredient, ingredient1
  end

end

#
# # => #<Ingredient:0x007fe6041273d8...>
#
#ingredient1.name
# # => "Cheese"
#
#ingredient1.unit
# # => "oz"
#
#ingredient1.calories
# # => 50
#
#ingredient2 = Ingredient.new("Macaroni", "oz", 200)
# # => #<Ingredient:0x007fd88582ed98...>
#
#pantry = Pantry.new
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
