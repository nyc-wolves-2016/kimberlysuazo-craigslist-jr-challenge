class ArticlesController < ApplicationController

  def create
    @category = Category.find_by(id: params[:category_id])
    @article = @category.articles.new(article_params)
    @article.key = SecureRandom.hex(4)
    if @article.save
      redirect_to category_path(@category)
    else
      render 'categories/show'
    end
  end

  def show
    @article = Article.find(params[:id])
  end

  private
    def article_params
      params.require(:article).permit(:title, :content)
    end
end
