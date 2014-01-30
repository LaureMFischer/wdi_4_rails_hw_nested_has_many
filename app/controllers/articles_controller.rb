class ArticlesController < ApplicationController

  before_action :get_user

  def index
    @articles = Article.order(:created_at)

    if params[:user_id]
      @articles = User.find(:user_id).articles.order(:created_at)
    else
      @articles = Article.order(:created_at)
    end

  end

  def show
  end

  def new
    @article = Article.new
  end

  def create
    @user.articles << Article.create!(articles_params)
    redirect_to user_path(@user.id)
  end

  private

  def articles_params
    params.require(:article).permit(:title, :body, :user_id)
  end

  def get_user
    @user = User.find(params[:user_id]) if params.key?(:user_id)
  end

end
