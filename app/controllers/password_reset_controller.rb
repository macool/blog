class PasswordResetController < ApplicationController
  
  def index
  end
  
  def create
    email = params[:email_address]
    if user = User.find_by(email: email)
      new_password = SecureRandom.hex 8
      user.password = new_password
      user.password_confirmation = new_password
      user.save validate: false
      PasswordResetMailer.notify_new_password(user, new_password).deliver
    end
    flash["alert-success"] = t("new_password_sent", default: "Your new password has been emailed to your email address")
    redirect_to login_path
  end
  
end
