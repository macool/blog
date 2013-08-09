class PostsController < ApplicationController

  def index
    @posts = Post.cached_published
  end

  def show
    @post = Post.published.find_by!(slug: params[:id])
    @comments = if current_user and current_user.is_admin then @post.comments.order("id ASC") else @post.comments.approved end
    @comment = Comment.new post_id: @post.id
  end
  
end
