class ArticlesController < ApplicationController
  def new
  end

  def create
    # JSON のように送信されたデータの中身を表示する
    render plain: params[:article].inspect

  end
end
