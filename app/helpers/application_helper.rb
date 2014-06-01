module ApplicationHelper

  def cp(path)
    "active" if current_page?(path)
  end

  protected 
  def is_admin?
    current_user && current_user.email == ENV["P_EMAIL"] || current_user && current_user.email == ENV["C_EMAIL"] || current_user && current_user.email == ENV["K_EMAIL"]
  end
end
