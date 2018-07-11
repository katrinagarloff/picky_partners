class UserAnswersController < ApplicationController
  def new
    @user_answer = UserAnswer.new
  end

  def create
    UserAnswer.where(user_id: session[:user_id]).destroy_all
    @user_answer1 = UserAnswer.create(user_id: session[:user_id], answer_id: answer_params[:question_1])
    @user_answer2 = UserAnswer.create(user_id: session[:user_id], answer_id: answer_params[:question_2])
    @user_answer3 = UserAnswer.create(user_id: session[:user_id], answer_id: answer_params[:question_3])
    @user_answer4 = UserAnswer.create(user_id: session[:user_id], answer_id: answer_params[:question_4])
    @user_answer5 = UserAnswer.create(user_id: session[:user_id], answer_id: answer_params[:question_5])
    @user_answer6 = UserAnswer.create(user_id: session[:user_id], answer_id: answer_params[:question_6])
  end


  private
  def answer_params
    params.require(:user_answers).permit(:question_1, :question_2, :question_3, :question_4, :question_5, :question_6)
  end

end
