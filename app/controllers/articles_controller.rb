class ArticlesController < ApplicationController

  def index
    @articles = Article.all

    if params[:user_id]
      @articles = User.find(:user_id).articles
    else
      @articles = Article.all
    end
  end

  def show
  end

  def new
  end

  def create
  end

end
