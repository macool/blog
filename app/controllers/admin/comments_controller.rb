class Admin::CommentsController < AdminController
  
  before_action :find_comment, only: [:approve, :decline]
  
  def index
    @comments = Comment.order("id DESC").includes(:post)
  end
  
  def approve
    @comment.update_attributes visible: true
    render 'comment_updated'
  end
  
  def decline
    @comment.update_attributes visible: false
    render 'comment_updated'
  end
  
private

  def find_comment
    @comment = Comment.find params[:id]
  end
  
end