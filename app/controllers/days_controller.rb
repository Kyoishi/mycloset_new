class DaysController < ApplicationController

  def index
    @days = Day.where(user_id: current_user.id)
  end

  def new
    @user = User.find(current_user.id)
    @day = Day.new
  end

  def show
    @coordinates = Coordinate.where(day_id: params[:id])
  end

  def create
     Day.create(day: day_params[:day], user_id: current_user.id)
  end

  private
  def day_params
    params.require(:day).permit(:day)
  end

end
