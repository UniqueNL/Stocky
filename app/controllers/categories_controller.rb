class CategoriesController < ApplicationController
  def index
    @categories = Category.all
  end

  def show
    @category = Category.find(params[:id])
  end

  def edit
    @category = Category.find(params[:id])
  end

  def update
    @category = Category.find(params[:id])

    location_params = params.require( :category ).permit( :name )

    if @category.update_attributes( location_params )
       redirect_to @category
    else
       render 'edit'
    end
  end

  def destroy
    @category = Category.find(params[:id])

    @category.destroy

    redirect_to locations_path
  end




  def new
    @category = Category.new
  end

  def create
    location_params = params.require( :location )

    @category = Category.new(location_params)

    if @category.save
      redirect_to @category
    else
      render 'new'
    end
  end
end
