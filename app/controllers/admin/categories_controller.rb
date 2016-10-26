class Admin::CategoriesController < Admin::ApplicationController
  def new
    @page_title = 'Add Category'
    @category = Category.new
  end

  def create
    @category = Category.new(category_params)

    if @category.save
      flash[:notice] = 'Category Created Successfully'
      redirect_to admin_categories_path
    else
      render 'new'
    end
  end

  def edit
    @page_title = 'Edit Category'
    @category = Category.find(params[:id])
  end

  def update 
    @category = Category.find(params[:id])
    if @category.update(category_params)
      flash[:notce] = "Category Updated"
      redirect_to admin_categories_path
    else
      render 'update'
    end
  end

  def destroy
  end

  def index
    @categories = Category.all
  end

  def show
  end

  private

  def category_params
    params.require(:category).permit(:name)
  end
end
