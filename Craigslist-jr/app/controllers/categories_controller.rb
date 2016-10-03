class CategoriesController < ApplicationController

  def index
    @categories = Category.all
  end

  def new
    @category = Category.new
  end

  def show
    @category = Category.find_by(id: params[:id])
    @articles = @category.articles
  end

  def edit
    @category = Category.find_by(id: params[:id])
  end

  def create
    @category = Category.new(category_params)

    if @category.save
      redirect_to @category
    else
      render 'new'
    end
  end

  def update
    @category = Category.find_by(id: params[:id])

    if @category.update(category_params)
      redirect_to @category
    else
      render 'edit'
    end
  end

  private
    def category_params
      params.require(:category).permit(:name)
    end

end
