class DaysController < ApplicationController

  def destroy
    day = Day.find(params[:id])
    if day.user_id == current_user.id
      day.destroy
    end
    redirect_to(:back)
  end

  def create
     Day.create(date: date_params[:date], user_id: current_user.id)
     redirect_to(:back)
  end

  def edit
     @user = User.find(current_user.id)
     @day = Day.find(params[:id])
     @newcoordinates = Newcoordinate.find_by_sql(['SELECT coordinate_id, outfit_id, (select outfit_id from newcoordinates as N2 where N1.coordinate_id = N2.coordinate_id group by coordinate_id) as B
FROM newcoordinates as N1
LEFT JOIN outfits ON outfits.id = N1.outfit_id
LEFT JOIN categories on categories.id = outfits.category_id
order by B,coordinate_id,categories.display_order ;'])

     # put @newcoordinates in order in which users can easily choose their coordinate 

    @maximum = Newcoordinate.maximum('outfit_id')
  end

  def update
    Day.find(params[:id]).update(params.permit(:coordinate_id))
  end

  private
  def date_params
    params.require(:day).permit(:date)
  end

end
