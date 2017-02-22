class OutfitsController < ApplicationController

  before_action :authenticate_user!, except: :index

  def index
    @outfit_outer = Outfit.where(user_id: current_user.id, category: "outer")
    @outfit_inner = Outfit.where(user_id: current_user.id, category: "inner")
    @outfit_bottom = Outfit.where(user_id: current_user.id, category: "bottom")
    @outfit_shoe = Outfit.where(user_id: current_user.id, category: "shoe")
    @outfit_other = Outfit.where(user_id: current_user.id, category: "other")
  end

  def new
    @user = User.find(current_user.id)
    @outfit = Outfit.new
  end

  def destroy
    outfit = Outfit.find(params[:id])
    if outfit.user_id == current_user.id
      outfit.destroy
    end
  end

  def create
    Outfit.create(category: outfit_params[:category], name: outfit_params[:name], brand: outfit_params[:brand], year: outfit_params[:year], image: outfit_params[:image], user_id: current_user.id)
  end

  private
  def outfit_params
    params.require(:outfit).permit(:category, :brand, :name, :year, :image)
  end

end
