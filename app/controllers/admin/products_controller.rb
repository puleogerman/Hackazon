module Admin
  class ProductsController < ApplicationController
    layout "admin_layout"
    before_action :set_product, only: [:edit, :update, :show]

    def index
      @products = Product.all
      # @products = Product.all.paginate(page: params[:page], per_page: 4)
    end

    def update
      if @product.update(product_params)
        redirect_to @product, notice: 'Product was successfully updated.'
      else
        render :edit
      end
    end

    def new
      @product = Product.new
    end

    def create
      @product = Product.new(product_params)
      if @product.save
        redirect_to admin_products_path, notice: 'Product was successfully created.'
      else
        render :new
      end
    end


    # def destroy
    #   @product.destroy
    #   redirect_to product_url, notice: 'Product was successfully destroyed.'
    # end

    private 

    def product_params
      params.require(:product).permit(:name, :price, :stock, :image, :category_id)
    end

    def set_products
      @product = Product.find(params[:id])
    end
    
  end
end
