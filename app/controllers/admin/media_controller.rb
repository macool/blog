class Admin::MediaController < AdminController
  
  before_action :find_media, only: [:edit, :update, :destroy]

  def index
    @media = Media.page(params[:page])
  end
  
  def new
    @media = Media.new
  end
  
  def edit
  end
  
  def create
    @media = Media.new(media_params)
    if @media.save
      flash["alert-success"] = I18n.t("media_created", default: "Media created")
      redirect_to action: :index
    else
      render :new
    end
  end
  
  def update
    if @media.update_attributes(media_params)
      flash["alert-success"] = I18n.t("media_updated", default: "Media updated")
      redirect_to action: :index
    else
      render :edit
    end
  end
  
  def destroy
    @media.destroy
    flash["alert-info"] = I18n.t("media_destroyed", default: "Media deleted")
    redirect_to action: :index
  end
  
private
  
  def find_media
    @media = Media.find params[:id]
  end

  def media_params
    params.require(:media).permit :name, :file, :description
  end
  
end
