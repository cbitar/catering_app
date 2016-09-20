class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception


    private

     # Make the current_user method available to views, not just controllers!
    helper_method :current_user

    def current_user
      @current_user ||= Customer.find_by(id: session[:customer_id]) if session[:customer_id]
    end
end
