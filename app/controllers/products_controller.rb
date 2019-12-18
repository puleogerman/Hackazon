class ProductsController < ApplicationController
  
  def index
    # @products = Product.all
    @products = Product.all.paginate(page: params[:page], per_page: 4)
  end

  def show

  end
end
