class SessionsController < ApplicationController
  before_action :load_user, only: :create

  def create
    return create_user unless @user

    if @user && @user.authenticate(params[:password])
      session[:user_id] = @user.id
      redirect_to root_path
    else
      redirect_to login_path, notice: 'Please login'
    end
  end

  def destroy
    log_out
    redirect_to root_path
  end

  private

  def load_user
    @user = User.find_by(username: params[:username])
  end

  def create_user
    @user = User.new(user_params)

    if @user.save
      session[:user_id] = @user.id
      redirect_to root_path
    else
      redirect_to login_path, notice: 'Please login'
    end
  end

  def user_params
    params.permit(:username, :password)
  end

  def log_out
    session.delete(:user_id)
    @current_user = nil
  end
end
