class CommentsController < ApplicationController
  before_action :find_article_comments

  def create
    @comment = @comments.create(comment_params)
    redirect_to user_article_path(Current.user, @article)
  end

  def destroy
    @comments.find_by(id: params[:id]).destroy
    redirect_to user_article_path(Current.user, @article)
  end

  private 
    def comment_params
      params.require(:comment).permit(:commenter, :body, :status)
    end

    def find_article_comments 
      @articles = Current.user.articles
      @article = @articles.find_by(id: params[:article_id])
      @comments = @article.comments
    end
end
