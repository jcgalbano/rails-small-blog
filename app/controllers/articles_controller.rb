class ArticlesController < ApplicationController
  protect_from_forgery with: :exception
  before_action :authenticate_user!, :except => [:index,:show]
  def index
    @articles = Article.all
    
    @cutter = CutLen.new()
    @articles = @cutter.cut(@articles)
  end
  
  def new 
  end

  def create
    @article = Article.new(article_params)
    #@article[:email]
    @article.save 

    redirect_to @article
  end

  def show 
    @article = Article.find(params[:id])
  end

  def edit
    @article = Article.find(params[:id])
  end

  def update
    @article = Article.find(params[:id])

    if @article.update(article_params)
        redirect_to @article
    else
       render 'edit'
    end
  end

  def destroy
   @article = Article.find(params[:id])
   @article.destroy 

   redirect_to '/articles/'
  end

  private
    def article_params
      params.require(:article).permit(:title,:text)
    end
end
