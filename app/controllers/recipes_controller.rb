class RecipesController < ApplicationController
  def show
  end

  def index
    @recipes = Recipe.all    
  end

  def new
  end

  def create
  end
end
