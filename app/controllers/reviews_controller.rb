class ReviewsController < ApplicationController
  def index
    @reviews = Review.page(params[:page]).per(15)
  end

  def show
    @review = Review.find(params[:id])
  end
end