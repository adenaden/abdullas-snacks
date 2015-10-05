class ProductsController < ApplicationController
  def index
  end

  def new
  	@product = Product.new
  end

  def create
  	product = Product.new(product_params)

  	if product.save
  		redirect_to(root_path, notice: "Product has been created!")
  	else
      redirect_to(new_product_path, notice: "Product has NOT been created!")
  
  	end
  end


  private

  def product_params
  	params.require(:product).permit(:name, :price)
  end
end
