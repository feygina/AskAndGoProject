class AnswersController < ApplicationController
  before_action :load_question, only: [:index, :create, :update]
  before_filter :require_login, only: [:create, :destroy, :update]

  def new
    @answer = @question.build
  end

end
