class CommentsController < ApplicationController
  before_action :get_article
  def index
    if params[:article_id]
      @comments = Article.find(:article_id).comments.order(:created_at)
    else
      @comments = Comment.order(:created_at)
    end
  end

  private

  def comments_params
    params.require(:comment).permit(:body, :article_id)
  end

  def get_article
    @article = Article.find(params[:article_id]) if params.key?(:article_id)
  end

end
