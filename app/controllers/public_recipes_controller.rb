class PublicRecipesController < ApplicationController
  def index
    @public_recipes = public_recipes.all
  end
end
