class SessionsController < ApplicationController

  skip_before_action :authenticate
  before_action :is_logged_in

  def new
  end

  def create
    @user = User.find_by(email: params[:email])
    if @user.present? && @user.authenticate(params[:password])
      session[:user_id] = @user.id
      Current.user = @user
      redirect_to user_articles_path(@user)
    else
      render :new
    end
  end

end
