class IngredientsController < ApplicationController
  
  def index
    @ingredients = Ingredient.all

    render json: @ingredients
  end

  def new
    @ingredient = Ingredient.new
  end

  def show
    @ingredient = Ingredient.find(params[:id])
  end

  def create
    @ingredient = Ingredient.new(ingredient_params)
    
    if @ingredient.save()
      redirect_to @ingredient
    else
      render :new, status: :unprocessable_entity
    end
  end

  private
    def ingredient_params
      params.require(:ingredient).permit(:name)
    end

end
