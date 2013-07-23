class PostsController < ApplicationController

  def index
    @posts = Post.where(published: true).order("id DESC").includes(:author)
  end

  def show
    @post = Post.find_by_slug_and_published!(params[:id], true)
    @comment = Comment.new post_id: @post.id
  end
  
end
