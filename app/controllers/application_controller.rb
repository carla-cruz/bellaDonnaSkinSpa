class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  protected 
  def is_admin?
    current_user.email == "pyluftig@gmail.com" || current_user.email == "carla13cruz@gmail.com" || current_user.email == "bellaDonna7@comcast.net"
  end
end
