class RegistrationsController < ApplicationController

  skip_before_action :authenticate
  before_action :is_logged_in

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save 
      session[:user_id] = @user.id
      Current.user = @user
      redirect_to user_articles_path(@user)
    else
      render :new
    end
  end

  private
    def user_params 
      params.require(:user).permit(:email, :password)
    end

end