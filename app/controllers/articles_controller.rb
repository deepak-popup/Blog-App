class ArticlesController < ApplicationController
  before_action :find_user

  def index
    @articles = @user.articles.all
  end

  def show
    @article = @user.articles.find(params[:id])
  end

  def new
    @article = @user.articles.new
  end

  def create
    @article = @user.articles.new(article_params)
    if @article.save
      redirect_to @article
    else
      render :new
    end
  end

  def edit
    @article = @user.articles.find(params[:id])
  end
  
  def update
    @article = @user.articles.find(params[:id])
      if @article.update(article_params)
        redirect_to @article
      else
        render :edit
      end
  end

  def destroy
    @article = @user.articles.find(params[:id])
    @article.destroy
    redirect_to root_path
  end

  private

    def article_params 
      params.require(:article).permit(:title, :body, :status)
    end

    def find_user
      @user = User.find_by(id: session[:user_id])
    end
end
