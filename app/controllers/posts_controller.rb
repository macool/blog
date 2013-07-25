class PostsController < ApplicationController

  def index
    @posts = Post.published.order("id DESC").includes(:author)
  end

  def show
    @post = Post.published.includes(:comments).find_by!(slug: params[:id])
    @comments = if current_user and current_user.is_admin then @post.comments else @post.comments.approved end
    @comment = Comment.new post_id: @post.id
  end
  
end
