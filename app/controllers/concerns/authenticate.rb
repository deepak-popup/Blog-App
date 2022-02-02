module Authenticate 
  extend ActiveSupport::Concern

  included do 
    before_action :set_user, :authenticate
  end

  private 
    def authenticate 
      if Current.user.nil?
        redirect_to login_url
      end
    end

    def is_logged_in
      if session[:user_id]
        redirect_to user_articles_path(Current.user)
      end
    end

    def set_user 
      if session[:user_id]
        Current.user = User.find_by(id: session[:user_id])
      else 
        Current.user = nil 
      end
    end

end