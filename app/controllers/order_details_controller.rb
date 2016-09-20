class OrderDetailsController < ApplicationController

  def index
    @order = Order.find(params[:order_id])
  end

  def show

  end

  def edit
  end

  def update
  end

  def destroy
    @order_details.destroy
    respond_to do |format|
    format.html { redirect_to customers_url, notice: 'Order was successfully destroyed.' }
    format.json { head :no_content }
    end
  end

  def add
    product = Product.find(params[:product_id])
    order = current_user.orders.last
    order.order_details << OrderDetail.create(unit: 1, product: product)
    redirect_to order_order_details_path(order)
  end
end
