class AnswersController < ApplicationController
  before_action :load_question, only: [:index, :create, :update]
  before_filter :require_login, only: [:create, :destroy, :update]

  def create
    @question = Question.find(params[:question_id])
    @question.answers.create(answer_params)
  end

  private

  def answer_params
    params.require(:answer).permit(:body)
  end

end
