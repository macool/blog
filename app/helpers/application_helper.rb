module ApplicationHelper
  
  def admin_navbar_active(name)
    if params[:controller] == "admin/#{name}" then "class=active" else "" end
  end
  
end
