class CommentsController < ApplicationController
  def create 
    @comment = current_user.comments.new(comment_params)
    @comment.date = Time.now
    if @comment.save
      redirect_to post_path(params[:post_id])
    else
      flash[:notice] = @comment.errors.full_messages.to_sentence
    end
  end
  
  private
  def comment_params
    params.require(:comment).permit(:body).merge(post_id: params[:post_id])
  end
end
