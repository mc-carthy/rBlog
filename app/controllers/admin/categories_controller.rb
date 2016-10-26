class Admin::CategoriesController < Admin::ApplicationController
  def new
    @page_title = 'Add Category'
    @category = Category.new
  end

  def create
  end

  def edit
  end

  def update
  end

  def destroy
  end

  def index
    @categories = Category.all
  end

  def show
  end
end
