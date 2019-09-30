class RecipesController < ApplicationController
  def show
    @recipe = Recipe.find(params[:id])
  end

  def index
    @recipes = Recipe.all
  end

  def new
    @recipe = Recipe.new
    @recipe.ingredients.build(name: 'name')
    @recipe.ingredients.build(quantity: 'quantity')
  end

  def create
    @recipe = Recipe.create(recipe_params)
    if @recipe.valid?
      @recipe.save
      redirect_to recipe_path(@recipe)
    else
      render :new
    end


  end

  private
  def recipe_params
    params.require(:recipe).permit(:title, ingredients_attributes: [
      :name,
      :quantity
    ]
  )

  end
end
