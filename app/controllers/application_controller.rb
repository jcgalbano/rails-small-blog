class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  include SessionsHelper
  protected
    def authenticate_user!
      if logged_in?
        
      else
        redirect_to '/login/'
      end
    end
end
