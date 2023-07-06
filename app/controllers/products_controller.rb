class ProductsController < ApplicationController
  def index
    if params[:search]
      @products = Product.where("name LIKE ?", "%#{params[:search]}%").page(params[:page]).per(15)
    else
      @products = Product.page(params[:page]).per(15)
    end
  end
  def show
    @product = Product.find(params[:id])
    @category = @product.category
    @brand = @product.brand
  end
end