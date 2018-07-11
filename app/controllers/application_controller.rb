class ApplicationController < ActionController::Base
  helper_method :current_user, :logged_in?

  def current_user
    if session[:user_id]
      @user = User.find_by(id: session[:user_id])
    else
    end
  end

  def logged_in?
    !!current_user
  end

  def authorized
    redirect_to login_path unless logged_in?
  end

  # helper_method :current_user, :logged_in?
  # # Are not exposed to the view unless we use the helper method
  #
  # def current_user
  #   if session[:user_id]
  #     @user = User.find_by(id: session[:user_id])
  #   else
  #   end
  # end
  #
  # def logged_in?
  #   !!current_user
  #   # This means is it really true?
  # end
  #
  # def authorize
  #  redirect_to login_path unless logged_in?
  # end
end
