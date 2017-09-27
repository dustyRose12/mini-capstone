class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  before_action :calculate_cart_count #this runs this action before all the other actions (and since it's in app controller, it runs before everything globally)

  def current_user
    @current_user ||= User.find_by(id: session[:user_id]) if session[:user_id]
  end
  helper_method :current_user #this line must be directly underneath the method, no extra lines etc


  def calculate_cart_count
    if current_user
      @cart_count = current_user.current_cart.count
    else
      @cart_count = 0 #so that if noone is signed in, the cart says 0
    end
  end
  
  def authenticate_user!
    redirect_to '/login' unless current_user
  end

  def authenticate_admin!
    redirect_to '/' unless current_user && current_user.admin
  end


end
