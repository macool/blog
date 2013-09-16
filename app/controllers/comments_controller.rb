class CommentsController < ApplicationController
  
  before_action :find_post
  
  respond_to :js

  def create
    @comment = Comment.new comment_params
    if @comment.save
      render 'created'
    else
      render 'not_created'
    end
  end


private

  def find_post
    @post = Post.published.find_by!(slug: params[:post_id])
  end

  def comment_params
    params[:comment].permit :post_id, :content, :name, :email, :website
  end
  
end
