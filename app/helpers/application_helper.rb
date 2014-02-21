module ApplicationHelper

  def cp(path)
    "active" if current_page?(path)
  end

  protected 
  def is_admin?
    current_user.email == "pyluftig@gmail.com" || current_user.email == "carla13cruz@gmail.com" || current_user.email == "bellaDonna7@comcast.net"
  end
end
