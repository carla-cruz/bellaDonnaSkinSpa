module ApplicationHelper

  protected 
  def is_admin?
    current_user.email == "pyluftig@gmail.com"
  end
end
