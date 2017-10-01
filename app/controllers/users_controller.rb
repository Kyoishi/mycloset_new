class UsersController < ApplicationController

  def show
    @user = User.find(params[:id])
    @days = Day.joins('LEFT JOIN daycoordinates ON daycoordinates.day_id = days.id').select('days.*, daycoordinates.coordinate_id').order("date").page(params[:page])
    @day = Day.new
    @outfits = @user.outfits
    @newcoordinates = Newcoordinate.where('coordinate_id >0').joins('LEFT JOIN outfits ON outfits.id = newcoordinates.outfit_id','LEFT JOIN categories on categories.id = outfits.category_id').order('categories.display_order')
    @maximum = Newcoordinate.maximum('coordinate_id')
  end

  def edit
  end

  def update
    current_user.update(update_params)
  end

  private
  def update_params
    params.require(:user).permit(:nickname, :avatar)
  end

end
