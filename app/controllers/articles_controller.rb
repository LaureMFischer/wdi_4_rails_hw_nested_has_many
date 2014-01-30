class ArticlesController < ApplicationController

  before_action :get_user

  def index

    if params[:user_id]
      @articles = User.find(:user_id).articles.order(:created_at)
    else
      @articles = Article.order(:created_at)
    end

  end

  def show
    @article_id = params[:id]
    @article = Article.find(@article_id)
  end

  def new
    @article = Article.new
  end

  def create
    @user.articles << Article.create!(articles_params)
    redirect_to user_path(@user.id)
  end

  def edit
    @article = Article.find(params[:id]) if params.key?(:id)
  end

  def update
    @article = Article.find(params[:id]) if params.key?(:id)
    @article.assign_attributes(articles_params)

    if @article.save
      flash[:notice] = 'Updated the article!'
      redirect_to action: :show
    else
      flash.now[:errors] = @article.errors.full_messages
      render :edit
    end
  end

  private

  def articles_params
    params.require(:article).permit(:title, :body, :user_id)
  end

  def get_user
    @user = User.find(params[:user_id]) if params.key?(:user_id)
  end

end
