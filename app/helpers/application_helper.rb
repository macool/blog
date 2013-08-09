module ApplicationHelper

  def form_errors_for(object)
    if object.errors.any?
      content = pluralize object.errors.count, "error"
      content += raw "<ul>"
      object.errors.full_messages.each do |msg|
        content += raw content_tag :li, msg
      end
      content += raw "</ul>"
      content_tag :div, id: "error_explanation", :class => "alert alert-error" do
        raw content
      end
    end
  end
  
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
  
  def buttons_for_approve_comment(comment)
    if comment.visible
      link_to "Decline comment", decline_admin_comment_path(comment), :class => "btn btn-mini", remote: true
    else
      link_to "Approve comment", approve_admin_comment_path(comment), :class => "btn btn-mini", remote: true
    end
  end
  
end
