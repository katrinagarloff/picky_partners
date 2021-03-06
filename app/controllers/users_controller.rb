class UsersController < ApplicationController

  def index
    @users = User.all
  end

  def new
    @user = User.new
    render :layout => "registration"
  end

  def create
    @user = User.new(user_params)
    if @user.valid?
      @user.save
      session[:user_id] = @user.id
      redirect_to @user
    else
      render :new
    end
  end

  def edit
    @user = User.find(params[:id])
    @questions = Question.all
  end

  def show
    @user = User.find(params[:id])
    @potential_matches = @user.potential_matches
    @requests = @user.match_requests
    @matches = @user.matches

  end

  private
  def user_params
    params.require(:user).permit(:name, :username, :mod, :password, :password_confirmation)
  end

end
