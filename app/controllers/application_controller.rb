class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  protected 
  def is_admin?
    if current_user && current_user.email == "pyluftig@gmail.com" || current_user && current_user.email == "carla13cruz@gmail.com" || current_user && current_user.email == "bellaDonna7@comcast.net"
      true
    else
      flash[:alert] = "Sorry. You do not have the correct administrative access to view the page you are trying to access."
      redirect_to root_path
    end
  end
end
