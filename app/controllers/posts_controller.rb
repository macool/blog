class PostsController < ApplicationController

  def index
    @posts = Post.published.order("id DESC").includes(:author)
  end

  def show
    @post = Post.published.includes(:comments).find_by!(slug: params[:id])
    @comment = Comment.new post_id: @post.id
  end
  
end
