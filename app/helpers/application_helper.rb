module ApplicationHelper
  
  def admin_navbar_active(name)
    if params[:controller] == "admin/#{name}" then "class=active" else "" end
  end
  
  def js_response(selector, rendered_content)
    js = <<-js
      (function(){
        var node = $("<span />", { html: "#{j rendered_content}"} );
        Helpers.TriggerHelpers.trigger(node);
        $("#{selector}").html(node.html());
      }());
    js
    raw js
  end
  
end
