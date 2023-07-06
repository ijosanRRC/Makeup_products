class CategoriesController < ApplicationController
  def index
    @categories = Category.all
  end
  def show
    @category = Category.find(params[:id])
  end
  def index
    @categories = Category.page(params[:page]).per(15) # Change '10' to the desired number of brands per page
  end
end
