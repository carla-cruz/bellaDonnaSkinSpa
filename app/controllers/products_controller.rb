class ProductsController < ApplicationController

def index
  @products = Product.all
end

def new
  @product = Product.new
  @category = Category.new
  @product.categories.build
end

def create
  @product = Product.create(product_params)

  if @product.save
    redirect_to products_path
  else
    redirect_to(:back)
  end
end

def edit
  @product = product.find(params[:id])
  redirect_to products_path
end

def update
end

def delete
end

private

  def product_params
    params.require(:product).permit(:name, :description, :price, :image_url, categories_attributes: [:id, :name])
  end

end
