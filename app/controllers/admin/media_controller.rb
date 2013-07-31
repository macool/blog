class Admin::MediaController < AdminController

  def index
    @media = Media.page(params[:page])
  end
  
end
