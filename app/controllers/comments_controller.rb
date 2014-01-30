class CommentsController < ApplicationController
  before_action :get_article, :get_user
  def index
    if params[:article_id]
      @comments = Article.find(:article_id).comments.order(:created_at)
    else
      @comments = Comment.order(:created_at)
    end
  end

  def new
    @comment = Comment.new
  end

  def create
    @article.comments << Comment.create!(comments_params)
    redirect_to user_article_path(@user.id, @article.id)
  end

  private

  def comments_params
    params.require(:comment).permit(:body, :article_id)
  end

  def get_article
    @article = Article.find(params[:article_id]) if params.key?(:article_id)
  end

  def get_user
    @user = User.find(params[:user_id]) if params.key?(:user_id)
  end

end
