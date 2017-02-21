class OutfitsController < ApplicationController

  before_action :authenticate_user!, except: :index

  def index
    @outfit = Outfit.all
  end

  def new
  end

  def create
    Outfit.create(outfit_params)
  end

  private
  def outfit_params
    params.permit(:category, :sub_category, :brand, :date, :image_url)
  end

end
