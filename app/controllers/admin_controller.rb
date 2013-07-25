class AdminController < ApplicationController
  
  before_filter :confirm_user_is_admin
  before_filter :require_login
  
  layout "layouts/admin"
  
  def index
  end

protected

  def confirm_user_is_admin
    unless current_user and current_user.is_admin
      flash["alert-error"] = I18n.t("login_required", default: "you kinda' forgot something, dude.")
      redirect_to login_path
    end
  end

end
