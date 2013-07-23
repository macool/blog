class CommentsController < ApplicationController
  
  def create
    person = Guest.update_with_email(params[:comment][:person])
    @comment = Comment.new comment_params
    @comment.person = person
    respond_to do |format|
      format.js {
        if @comment.save
          render 'created'
        else
          render 'not_created'
        end
      }
    end
  end


private

  def comment_params
    params[:comment].permit :post_id, :content
  end
  
end
