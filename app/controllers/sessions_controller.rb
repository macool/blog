class SessionsController < ApplicationController
  
  def index
  end

  def create
    respond_to do |format|
      if @user = login(params[:username],params[:password])
        format.html {
          flash["alert-success"] = I18n.t("login_successful", default: "Login successful.")
          redirect_back_or_to root_path
        }
        format.json { render :json => @user, :status => :created, :location => @user }
      else
        format.html {
          flash["alert-error"] = I18n.t("login_failed", default: "Login failed.")
          render :action => :index
        }
        format.json { render :json => @user.errors, :status => :unprocessable_entity }
      end
    end
  end

  def destroy
    logout
    flash["alert-info"] = I18n.t("logged_out", default: "Logged out!")
    redirect_back_or_to root_path
  end

end
