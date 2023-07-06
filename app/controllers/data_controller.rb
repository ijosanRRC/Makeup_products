class DataController < ApplicationController
  def index
    @products = Product.all
    @brands = Brand.all
    @categories = Category.all
    @reviews = Review.all
    @users = User.all
  end

end
