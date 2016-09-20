class SessionsController < ApplicationController

  def new
  end

  def create
    customer = Customer.find_by(email: params[:email])
    if customer && customer.authenticate(params[:password])
      session[:customer_id] = customer.id
      redirect_to customer_path(customer), notice: 'Logged in!'
    else
      flash.now.alert = 'Invalid login credentials - try again!'
      render 'new'
    end
  end

  def destroy
    session[:customer_id] = nil
    redirect_to root_path, notice: "Logged out!"
  end

end
