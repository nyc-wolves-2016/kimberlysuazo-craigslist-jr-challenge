class ArticlesController < ApplicationController

  before_filter :require_user

  def new
    @article = Article.new
    @category = Category.find_by(id: params[:category_id])
  end

  def create
    @category = Category.find_by(id: params[:category_id])
    @article = @category.articles.new(article_params)
    @article.key = SecureRandom.hex(4)
    @articles = @category.articles

    if @article.save
      @article_key = @article.key
      render 'new'
    else
      render 'new'
    end
  end

  def show
    @article = Article.find(params[:id])
  end

  def edit
    @category = Category.find_by(id: params[:category_id])
    @article = Article.find_by(key: params[:key])
    redirect_to @category unless @article

  end

  def update
    @category = Category.find_by(id: params[:category_id])
    @article = Article.find_by(id: params[:id])

    if @article.update(article_params)
      redirect_to category_article_path(@category, @article)
    else
      render 'edit'
    end
  end

  def destroy
    @category = Category.find_by(id: params[:category_id])
    @articles = @category.articles
    @article = Article.find_by(id: params[:id])
    @article.destroy

    redirect_to @category
  end

  private
    def article_params
      params.require(:article).permit(:title, :content)
    end
end


# http://localhost:3000/categories/6/articles/14/edit?key=a445f552
