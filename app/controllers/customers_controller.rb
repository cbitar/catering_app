class CustomersController < ApplicationController

  def index
    @customers = Customer.all
  end

  def show
    @pending_order = Order.find_by(customer_id: current_user.id, complete: false)
  end

  def new
    @customer = Customer.new
  end

  def create
    @customer = Customer.new(customer_params)
    if @customer.save
      session[:customer_id] = @customer.id
      flash[:notice] = "You have successfully signed up!"
      redirect_to new_order_path
    else
      render :new
    end
  end

private

  def customer_params
      params.require(:customer).permit(:name, :email, :password, :password_confirmation)
  end

end
