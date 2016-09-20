class OrdersController < ApplicationController

  def index
    @orders = Order.all
  end

  def show
    @order = Order.find(params[:id])
    @order_details = @order.order_details
  end

  def new
    @order = Order.new
  end

  def create
    @order = Order.new
    puts params
    @order.delivery_date = (params[:order][:delivery_date]).to_datetime
    @order.location = params[:order][:location]
    @order.customer = current_user
    if @order.save
      redirect_to order_order_details_path(@order)
    else
      flash.now.alert = 'Please Enter a Delivery Date!'
      render 'new'
    end

  end

  def edit
  end

  def update
  end

  def destroy
  end
end
