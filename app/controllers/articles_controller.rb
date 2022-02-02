class ArticlesController < ApplicationController
  before_action :find_user_articles

  def index
    @articles = @articles.all
  end

  def show
    @article = @articles.find(params[:id])
  end

  def new
    @article = @articles.new
  end

  def create
    @article = @articles.new(article_params)
    if @article.save
      redirect_to [@user, @article]
    else
      render :new
    end
  end

  def edit
    @article = @articles.find(params[:id])
  end
  
  def update
    @article = @articles.find(params[:id])
      if @article.update(article_params)
        redirect_to [@user, @article]
      else
        render :edit
      end
  end

  def destroy
    @article = @articles.find(params[:id])
    @article.destroy
    redirect_to user_articles_path(@user)
  end

  private

    def article_params 
      params.require(:article).permit(:title, :body, :status)
    end

    def find_user_articles
      @user = Current.user
      @articles = @user.articles
    end
end
 