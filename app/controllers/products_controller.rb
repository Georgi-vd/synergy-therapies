class ProductsController < ApplicationController
  #before_action :product_params, only: [:show]
  def index
    @products = Product.all
  end

  def show
    @product = Product.find(params[:id])
  end

  private
  def product_params
    params.require(:product).permit(:name)
  end
end
