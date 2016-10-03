class CategoriesController < ApplicationController

  def index
    @categories = Category.all
  end

  def new
  end

  def create
    @category = Category.new(category_params)
  end

  private
    def category_params
      params.require(:category).permit(:name)
    end

end
