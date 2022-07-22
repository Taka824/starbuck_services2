class Admin::ArticlesController < Admin::BaseController
    before_action :set_post, only: %i[edit update show destroy]

    def index
      @q = Article.ransack(params[:q])
      @articles = @q.result.includes(:user).order(created_at: :desc).page(params[:page])
    end

    def new
      @article = Article.new
    end
  
    def create
      @article = current_user.articles.build(article_params)
      if @article.save
        redirect_to articles_path, success: t('defaults.message.created', item: Article.model_name.human)
      else
        flash.now['danger'] = t('defaults.message.not_created', item: Article.model_name.human)
        render :new
      end
    end
  
 
    def edit; end   
 
    def update
      if @article.update(article_params)
        redirect_to admin_article_path(@article), success: t('defaults.message.updated', item: Article.model_name.human)
      else
        flash.now['danger'] = t('defaults.message.not_updated', item: Article.model_name.human)
        render :edit
      end
    end
 
    def show; end
 
    def destroy
      @article.destroy!
      redirect_to admin_articles_path, success: t('defaults.message.deleted', item: Article.model_name.human)
    end
 
    private
 
    def set_post
      @article = Article.find(params[:id])
    end
 
    def article_params
      params.require(:article).permit(:title, :body)
    end
end
