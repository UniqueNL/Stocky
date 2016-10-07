class IngredientsController < ApplicationController
  def index
    @ingredients = Ingredient.all
  end

  def show
    @ingredient = Ingredient.find(params[:id])
  end

  def edit

  end

  def new
    @ingredient = Ingredient.new
  end

  def create
    ingredient_params = params.require( :ingredient ).permit(:name, :amount, :expire, :category_id, :location_id)

    @ingredient = Ingredient.new(ingredient_params)

    if @ingredient.save
      redirect_to @ingredient
    else
      render 'new'
    end
  end
end
