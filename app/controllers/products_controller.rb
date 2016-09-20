class ProductsController < ApplicationController
  def index
    @products = Product.all
    @order = current_user.orders.last
  end
end
