module ApplicationHelper
  
  def navbar_active?(name)
    if params[:controller] == name then "class='active'" else "" end
  end
  
end
