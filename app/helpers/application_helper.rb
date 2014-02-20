module ApplicationHelper

  def cp(path)
    "active" if current_page?(path)
  end

  protected 
  def is_admin?
    current_user.email == "pyluftig@gmail.com"
  end
end
