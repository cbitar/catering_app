class OrderDetailsController < ApplicationController

  def index
    @order = Order.find(params[:order_id])
  end

  def show

  end

  def edit
    @order_details = OrderDetail.find(params[:id])
    @order_details.edit
      redirect_to edit_order_order_detail_path(params[:id])
  end

  def update
  end

  def destroy
    @order_details = OrderDetail.find(params[:id])
    @order_details.destroy
     redirect_to order_order_details_path(params[:order_id])
  end

  def add
    product = Product.find(params[:product_id])
    order = current_user.orders.last
    order.order_details << OrderDetail.create(quantity: 1, product: product)
    redirect_to order_order_details_path(order)
  end

  def inc
    product = OrderDetail.find_by(user_id: current_user.id, product_id: params[:product_id])
    product.quantity += 1
    product.save
    redirect_to order_order_details_path(current_user.orders.last)
  end

  def dec
    product = OrderDetail.find_by(user_id: current_user.id, product_id: params[:product_id])
    product.quantity -= 1 if product.quantity > 0
    product.save
    redirect_to order_order_details_path(current_user.orders.last)
  end
end
