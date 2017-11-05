class DaycoordinatesController < ApplicationController

  def new
    @user = User.find(current_user.id)
     @daycoordinate = Daycoordinate.new
    @newcoordinates = Newcoordinate.find_by_sql(['SELECT coordinate_id, outfit_id, user_id, (select outfit_id from newcoordinates as N2 where N1.coordinate_id = N2.coordinate_id group by coordinate_id) as B
FROM newcoordinates as N1
LEFT JOIN outfits ON outfits.id = N1.outfit_id
LEFT JOIN categories on categories.id = outfits.category_id
WHERE user_id = ?
order by B,coordinate_id,categories.display_order;', current_user.id])


     # put @newcoordinates in order in which users can easily choose their coordinate 

    @maximum = Newcoordinate.maximum('outfit_id')
  end

  def create
    Daycoordinate.create(day_id: daycoordinate_params[:day_id], coordinate_id: daycoordinate_params[:coordinate_id], user_id: daycoordinate_params[:user_id])
    redirect_to(:back)
  end

  def destroy
    daycoordinate = Daycoordinate.find_by(day_id: params[:day_id], coordinate_id: params[:id], user_id: params[:user_id])
    if daycoordinate.user_id == current_user.id
      daycoordinate.destroy
    end
    redirect_to(:back)
  end

  private
  def daycoordinate_params
    params.permit(:day_id, :coordinate_id, :user_id)
  end

end
