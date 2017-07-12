class QuestionsController < ApplicationController
  def index
    @questions = Question.all
  end

  def new
    @question = Question.new
    respond_to do |format|
      format.html { redirect_to questions_path }
      format.js
    end
  end

  def create
    option1 = question_params.fetch(:option1)
    option2 = question_params.fetch(:option2)
    question = current_user.questions.create
    if question.options.create(content: option1) && question.options.create(content: option2)
      redirect_to questions_path
    else
      render :new
    end
  end

private

  def question_params
    params.permit(:option1, :option2)
  end
end
