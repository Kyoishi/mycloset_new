class OutfitsController < ApplicationController

  before_action :authenticate_user!, except: :index

  def index
    @outfit_outer = Outfit.where(user_id: current_user.id, category: 1)
    @outfit_inner = Outfit.where(user_id: current_user.id, category: 2)
    @outfit_bottom = Outfit.where(user_id: current_user.id, category: 3)
    @outfit_shoe = Outfit.where(user_id: current_user.id, category: 4)
    @outfit_other = Outfit.where(user_id: current_user.id, category: 5)
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
