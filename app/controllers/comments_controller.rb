class CommentsController < ApplicationController

  def create
    @article = Article.find_by(id: params[:article_id])
    @comment = @article.comments.create(comment_params)
    redirect_to article_path(@article)
  end

  def destroy
    @article = Article.find_by(id: params[:article_id])
    @article.comments.find_by(id: params[:id]).destroy
    redirect_to article_path(@article)
  end

  private 
    def comment_params
      params.require(:comment).permit(:commenter, :body, :status)
    end
end
