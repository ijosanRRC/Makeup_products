class BrandsController < ApplicationController
  def index
    if params[:search].present?
      @brands = Brand.where("name LIKE ?", "%#{params[:search]}%")
    else
      @brands = Brand.where.not(name: nil, brand_code: nil)
    end
    @brands = @brands.page(params[:page]).per(15) # Change '15' to the desired number of brands per page
  end

  def show
    @brand = Brand.find(params[:id])
  end
end
