class ProductsController < ApplicationController

  def index
    @products = Product.all
  end

  def new
    @product = Product.new
  end

  def show
    @product = Product.find(params[:id])
  end

  def create
    @product = Product.new(params[:product])
    @product.save
    redirect_to products_path
  end

  def update
  end

  def edit
  end

  def destroy
    @product = Product.find(params[:id])
    @product.destroy
    redirect_to products_path
  end

  def add_to_cart
    @product = Product.find(params[:id])
    @cart = find_cart
    @cart.add_item @product
    session[:cart] = @cart.items
    redirect_to products_path
  end

end
