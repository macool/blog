class AdminController < ApplicationController
  
  before_filter :confirm_user_is_admin
  before_filter :require_login

protected

  def confirm_user_is_admin
    unless current_user and current_user.is_admin
      flash["alert-error"] = "you kinda' forgot something, dude."
      redirect_to login_path
    end
  end

end
