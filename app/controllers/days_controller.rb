class DaysController < ApplicationController

  def new
    @user = User.find(current_user.id)
    @day = Day.new
  end

  def show
    @coordinates = Coordinate.where(day_id: params[:id])
    @day = params[:id]
  end

  def destroy
    day = Day.find(params[:id])
    if day.user_id == current_user.id
      day.destroy
    end
  end

  def create
     Day.create(day: day_params[:day], user_id: current_user.id)
  end

  private
  def day_params
    params.require(:day).permit(:day)
  end

end
