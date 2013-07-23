class HomeController < ApplicationController

  def index
    @posts = Post.order("id DESC").includes(:author)
  end
  
end
