class ArticlesController < ApplicationController
  def index
    @articles = Article.all
  end

  def new
    @article = Article.new
  end

  def create
    # JSON のように送信されたデータの中身を表示する
    # render plain: params[:article].inspect

    # "strong_parameters" の機能で拒否されないよう、セットしていいパラメーターを管理
    # @article = Article.new(params[:article])
    @article = Article.new(article_params)

    @article.save # DB に保存

    if @article.save # validation を満たせば true
      redirect_to @article
    else
      render 'new'
    end
  end

  def show
    @article = Article.find(params[:id])
  end

  def edit
    @article = Article.find(params[:id])
  end

end

private
  def article_params
    params.require(:article).permit(:title, :text)
  end
