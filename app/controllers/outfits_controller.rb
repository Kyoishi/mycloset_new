class OutfitsController < ApplicationController

  before_action :authenticate_user!, except: :index

  def index
    @outfits = Outfit.where(user_id: current_user.id).joins('LEFT JOIN categories on categories.id = outfits.category_id').order('categories.display_order')
    @newcoordinates = Newcoordinate.all
  end

  def new
    @user = User.find(current_user.id)
    @outfit = Outfit.new
    @categories = Category.where(level: 3)
  end

  def destroy
    outfit = Outfit.find(params[:id])
    if outfit.user_id == current_user.id
      outfit.destroy
    end
  end

  def edit
    @user = User.find(current_user.id)
    @outfit = Outfit.find(params[:id])
    @categories = Category.where(level: 3)
  end

  def create
    Outfit.create(category_id: outfit_params[:category_id], name: outfit_params[:name], brand: outfit_params[:brand], year: outfit_params[:year], price: outfit_params[:price], image: outfit_params[:image], user_id: current_user.id)
  end

  def update
    Outfit.find(params[:id]).update(outfit_params)
  end

  private
  def outfit_params
    params.require(:outfit).permit(:category_id, :brand, :name, :year, :price, :image)
  end

end
