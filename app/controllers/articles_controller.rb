class ArticlesController < ApplicationController
  skip_before_action :require_login
  before_action :set_post, only: %i[show]
  def index
    @articles = Article.all.includes(:user).order(created_at: :desc)
  end

  def show; end

  private
 
  def set_post
    @article = Article.find(params[:id])
  end

  def article_params
    params.require(:article).permit(:title, :body, :category, :article_image, :article_image_cache, :summary)
  end
end
