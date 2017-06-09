class WelcomeController < ApplicationController
  protect_from_forgery with: :exception

  def index
    @article = Article.last
  end

end
