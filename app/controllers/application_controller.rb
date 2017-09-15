class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def current_user
    @current_user ||= User.find_by(id: session[:user_id]) if session[:user_id]
  end
  helper_method :current_user #this line must be directly underneath the method, no extra lines etc

  def authenticate_user!
    redirect_to '/login' unless current_user
  end

end
