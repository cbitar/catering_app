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
end
