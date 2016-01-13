class AddRecipeToIngredients < ActiveRecord::Migration
  def change
    add_reference :ingredients, :recipe, index: true, foreign_key: true
  end
end
