class Admin::UsersController < AdminController

  before_action :find_user, only: [:edit, :update]

  def index
    @users = User.all
  end

  def new
    @user = User.new
  end

  def edit
  end

  def create
    @user = User.new user_params
    if @user.save
      flash["alert-success"] = I18n.t("user_created", default: "User created")
      redirect_to action: :index
    else
      flash["alert-error"] = I18n.t("user_not_created", default: "User not created")
      render :new
    end
  end

  def update
    if @user.update_attributes user_params
      flash["alert-success"] = I18n.t("user_updated", default: "User updated")
      redirect_to action: :index
    else
      flash["alert-error"] = I18n.t("user_not_updated", default: "User not updated")
      render :edit
    end
  end

private
  
  def user_params
    allowed_attributes = [:username, :email, :name, :bio, :is_admin]
    allowed_attributes += [:password, :password_confirmation] unless params[:user][:password].blank?
    params.require(:user).permit allowed_attributes
  end

  def find_user
    @user = User.find_by! username: params[:id]
  end
  
end
