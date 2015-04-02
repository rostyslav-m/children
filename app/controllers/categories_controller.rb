class CategoriesController < ApplicationController

  before_filter :find_category, only: [:show, :edit, :update, :destroy]
#  before_filter :user_admin,    only: [:new, :edit, :update, :destroy]

  def index
    @categories = Category.all
  end

  def show
  end

  def new
  end

  def edit
  end

  def destroy
    @category.destroy
    redirect_to categories_path  #action: "index"
  end

  def update
    if @category.update(categories_params)
      redirect_to categories_path
    else
      render 'edit'
    end
  end


  def create
    @categories = Category.new(categories_params)

    if @categories.save
      redirect_to categories_path
    else
      render 'new'
    end
  end

  private

#  def user_admin
#    redirect_to items_path if ((current_user == nil)||(current_user.is_admin == false))
#  end

  def find_category
    @category = Category.find(params[:id].to_i)
  end

  def categories_params
    params.require(:category).permit(:name_cat)
  end
end