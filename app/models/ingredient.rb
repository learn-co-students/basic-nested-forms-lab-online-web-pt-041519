class Ingredient < ActiveRecord::Base
  belongs_to :recipe
# belongs to a recipe
# ingredient.name: string
# ingredient.quantity: string
end
