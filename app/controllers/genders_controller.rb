class GendersController < ApplicationController

  before_filter :find_gender, only: [:show, :edit, :update, :destroy]
#  before_filter :user_admin,    only: [:new, :edit, :update, :destroy]

  def index
    @genders = Gender.all
  end

  def show
  end

  def new
  end

  def edit
  end

  def destroy
    @gender.destroy
    redirect_to genders_path  #action: "index"
  end

  def update
    if @gender.update(genders_params)
      redirect_to genders_path
    else
      render 'edit'
    end
  end


  def create
    @genders = Gender.new(genders_params)

    if @genders.save
      redirect_to genders_path
    else
      render 'new'
    end
  end

  private

#  def user_admin
#    redirect_to items_path if ((current_user == nil)||(current_user.is_admin == false))
#  end

  def find_gender
    @gender = Gender.find(params[:id].to_i)
  end

  def genders_params
    params.require(:gender).permit(:name_gender)
  end
end