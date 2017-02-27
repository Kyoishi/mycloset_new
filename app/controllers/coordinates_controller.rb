class CoordinatesController < ApplicationController

  def new
    @user = User.find(current_user.id)
    @day = Day.find(params[:day_id])
    # index から飛ばしているday_idを取得
    @coordinate = Coordinate.new
    # binding.pry
  end
  def create
    Coordinate.create(coordinate_params)
  end
  private
  def coordinate_params
    params.require(:coordinate).permit(:day_id,:outfit_id)
  end

end
