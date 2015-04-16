class ItemsController < ApplicationController

  before_filter :find_item, only: [:show, :edit, :update, :destroy]
#  before_filter :user_admin,   only: [:new, :create, :edit, :update, :destroy]

  def index
   # @items = Item.all
    @search = Item.search(params[:q])
    @items = @search.result
   # @search.build_condition
  end

  def show
  end

  def new
  end

  def edit
  end

  def create
    @item = Item.new(item_params)

    if @item.save
      redirect_to @item
    else
      render 'new'
    end
  end

  def update
    if @item.update(item_params)
      redirect_to @item
    else
      render 'edit'
    end
  end

  def destroy
    @item.destroy
    redirect_to action: "index"
  end

  private
    def item_params
      params.require(:item).permit(:title, :description, :category_id, :gender_id, :name_cat, :name_gender, :age)
    end

  private
    def find_item   
      @item = Item.find(params[:id])
    end

#  private
#    def user_admin
#      redirect_to items_path if ((current_user == nil)||(current_user.is_admin == false))
#    end

end
