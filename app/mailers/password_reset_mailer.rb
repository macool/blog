class PasswordResetMailer < ActionMailer::Base
  default from: "bot@shiriculapo.com"
  
  def notify_new_password(user, new_password)
    @user = user
    @new_password = new_password
    mail to: @user.email, subject: "Your new password for #{BLOG_CONFIGS["blog_header"]}"
  end
end
