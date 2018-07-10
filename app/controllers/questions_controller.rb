class QuestionsController < ApplicationController

  def index
    @questions = Question.all
  end

  def new
    @question = Question.new
    @questions = Question.all
  end

  def create
    byebug
    @question = Question.find(params[:id])
  end

  def show
   @question = Question.find(params[:id])

  end

  private
  def question_params

  end

end
