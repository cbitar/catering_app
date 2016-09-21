class OrderDetailsController < ApplicationController

  def index
    @order = Order.includes(:order_details).order("order_details.id").find(params[:order_id])
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
    # TODO find order detail for product
    order_detail = OrderDetail.find(params[:order_detail_id])
    order_detail.quantity += 1
    order_detail.save
    # and increase quantity by 1
    # redirect to order detail index
    redirect_to :back
    #add flash notice about changing quanitiy
  end

  def dec
    #TODO find order detail for product
    order_detail = OrderDetail.find(params[:order_detail_id])
    # and decrease quantity by 1
    if order_detail.quantity > 1
    order_detail.quantity -= 1
    order_detail.save
    #redirect to order detail index
    redirect_to :back
  end
  end
end
