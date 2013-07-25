class SessionsController < ApplicationController
  
  def index
  end

  def create
    if @user = login(params[:username],params[:password])
      flash["alert-success"] = I18n.t("login_successful", default: "Login successful.")
      redirect_back_or_to root_path
    else
      flash["alert-error"] = I18n.t("login_failed", default: "Login failed.")
      render :action => :index
    end
  end

  def destroy
    logout
    flash["alert-info"] = I18n.t("logged_out", default: "Logged out!")
    redirect_back_or_to root_path
  end

end
