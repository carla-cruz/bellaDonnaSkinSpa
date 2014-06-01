class ProductsController < ApplicationController
  
  before_filter :is_admin?, except: [:index]

  def index
    @products = Product.all
  end

  def new
    @product = Product.new
    @category = Category.new
    @product.categories.build
  end

  def create
    @product = Product.create!(product_params)
    redirect_to admin_path
  end

  def edit
    @product = Product.find(params[:id])
  end

  def update
    @product = Product.find(params[:id])
    @product.update_attributes(product_params)
    redirect_to admin_path
  end

  def destroy
    @product = Product.destroy(params[:id])
    respond_to do |format|
      format.html { redirect_to products_path }
      format.js
    end
  end

  private

  def product_params
    params.require(:product).permit(:name, :description, :price, :image_url, :sort_order, categories_attributes: [:id, :name, :description])
  end

end
