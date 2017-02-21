class OutfitsController < ApplicationController

  before_action :authenticate_user!, except: :index

  def index
    @outfit_outer = Outfit.where(user_id: current_user.id, category: "outer")
    @outfit_inner = Outfit.where(user_id: current_user.id, category: "inner")
    @outfit_bottom = Outfit.where(user_id: current_user.id, category: "bottom")
    @outfit_shoe = Outfit.where(user_id: current_user.id, category: "shoe")
  end

  def new
    @user = User.find(current_user.id)
    @outfit = Outfit.new
  end

  def create
    Outfit.create(category: outfit_params[:category], sub_category: outfit_params[:sub_category], brand: outfit_params[:brand], date: outfit_params[:date], image: outfit_params[:image], user_id: current_user.id)
  end

  private
  def outfit_params
    params.require(:outfit).permit(:category, :sub_category, :brand, :date, :image)
  end

end
