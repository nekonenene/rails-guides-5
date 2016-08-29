class CommentsController < ApplicationController

  def create
    @article = Article.find(params[:article_id]) # コメントが書かれた記事を探す
    @comment = @article.comments.create(comment_params)
    redirect_to article_path(@article)
  end

  # コメント削除への制限をかける
  http_basic_authenticate_with name: "admin", password: "admin", only: :destroy

  def destroy
    @article = Article.find(params[:article_id])
    @comment = @article.comments.find(params[:id])
    @comment.destroy
    redirect_to article_path(@article)
  end

  private
  def comment_params
    params.require(:comment).permit(:commenter, :body)
  end
end
