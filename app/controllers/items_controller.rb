class ItemsController < ApplicationController

  before_filter :find_item,          only: [:show, :edit, :update, :destroy]
#  before_filter :user_can_update,    only: [:edit, :update, :destroy]
#  before_filter :authenticate_user!, only: [:new, :create, :edit, :update, :destroy]
#  before_filter :user_can_create,    only: [:new, :create]

  def index
    @search = Item.search(params[:q])
    @items = @search.result(:distinct => true).paginate(:page => params[:page], :per_page => 5)
  end

  def show
  end

  def new
  end

  def edit
  end

  def create
    @item = Item.new(item_params)
    @item.user = current_user

    if @item.save
      redirect_to @item
    else
      render 'new'
    end
  end

  def update
    if ( current_user && ((current_user.is_admin == true)||(current_user == @item.user)))
      if @item.update(item_params)
        redirect_to @item
      else
        render 'edit'
      end
    else
      redirect_to items_path
    end
  end

  def destroy
    if ((current_user.is_admin == true)||(current_user == @item.user))
      @item.destroy
      redirect_to action: "index"
    else
      redirect_to items_path
    end
  end

  private

    def find_item   
      @item = Item.find(params[:id])
    end

    def item_params
      params.require(:item).permit(:title, :description, :user_id, :category_id, :gender_id, :name_cat, :name_gender, :age)
    end

#  private
#    def user_can_update
#      redirect_to items_path if ((current_user == nil)||(current_user.is_admin == false)||(current_user != @item.user))
#    end

end
