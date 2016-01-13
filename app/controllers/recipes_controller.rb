class RecipesController < ApplicationController
  def show
    @recipe = Recipe.find(params[:id])
    if @recipe.ingredients.last.try(:name)
      @recipe.ingredients.build
    end
  end

  def index
    @recipes = Recipe.all    
  end

  def new
    @recipe = Recipe.new
  end

  def create
  end
end
