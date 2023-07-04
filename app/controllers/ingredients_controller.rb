class IngredientsController < ApplicationController
  def create
    @recipe = recipe.find(params[:recipe_id])
    @comment = @recipe.Ingredients.create(ingredient_params)
    redirect_to recipe_path(@recipe)
  end

  private
    def ingredient_params
      params.require(:Ingredient).permit(:name)
    end

end
