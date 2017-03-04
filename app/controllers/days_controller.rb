class DaysController < ApplicationController

  def destroy
    day = Day.find(params[:id])
    if day.user_id == current_user.id
      day.destroy
    end
    redirect_to(:back)
  end

  def create
     Day.create(day: day_params[:day], user_id: current_user.id)
     redirect_to(:back)
  end

  private
  def day_params
    params.require(:day).permit(:day)
  end

end
