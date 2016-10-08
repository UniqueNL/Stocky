class IngredientsController < ApplicationController
  def index
    @ingredients = Ingredient.all
  end

  def show
    @ingredient = Ingredient.find(params[:id])
  end

  def edit
    @ingredient = Ingredient.find(params[:id])
  end

  def update
    @ingredient = Ingredient.find( params[:id] )

    ingredient_params = params.require( :ingredient ).permit(:name, :amount, :expire, :category_id, :location_id)

    if @ingredient.update_attributes( ingredient_params )
       redirect_to @ingredient
    else
       render 'edit'
    end
  end

  def destroy
    @ingredient = Ingredient.find(params[:id])

    @ingredient.destroy

    redirect_to ingredients_path
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
