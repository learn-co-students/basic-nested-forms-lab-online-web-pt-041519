class RecipesController < ApplicationController
  def show
    @recipe = Recipe.find(params[:id])
  end

  def index
    @recipes = Recipe.all
  end

  def new
    @recipe = Recipe.new
    @recipe.ingredients.build
    @recipe.ingredients.build
  end

  def create
    recipe = Recipe.create(recipes_params)
    redirect_to recipe
  end

  private

  def recipes_params
    params.require(:recipe).permit(
      :title,
      ingredients_attributes: [
        :name,
        :quantity
      ]
    )
  end
end

#Instructions
#Build a recipe form that accepts two ingredients! It should automatically create the new Ingredient objects.