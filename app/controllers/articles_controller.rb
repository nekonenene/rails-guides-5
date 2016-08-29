class ArticlesController < ApplicationController
  def new
  end

  def create
    # JSON のように送信されたデータの中身を表示する
    # render plain: params[:article].inspect

    # "strong_parameters" の機能で拒否されないよう、セットしていいパラメーターを管理
    # @article = Article.new(params[:article])
    @article = Article.new(article_params)

    @article.save # DB に保存
    redirect_to @article
  end

  def show
    @article = Article.find(params[:id])
  end

  def index
    @articles = Article.all
  end
end

private
  def article_params
    params.require(:article).permit(:title, :text)
  end
