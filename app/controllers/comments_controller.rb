class CommentsController < ApplicationController
  def new
    @comment = Comment.new
    @question = Question.find(params.fetch(:question_id))
  end

  def create
    @question = Question.find(params.fetch(:question_id))
    comment = @question.comments.new(comment_params)
    comment.user_id = current_user.id
    comment.save
    @question.save
    respond_to do |format|
      format.html { redirect_to questions_path }
      format.js
    end
  end
private
  def comment_params
    params.require(:comment).permit(:content)
  end
end
