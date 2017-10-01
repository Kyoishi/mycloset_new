class NewcoordinatesController < ApplicationController

  def new
    @user = User.find(current_user.id)
    @newcoordinate = Newcoordinate.new
    @num = Newcoordinate.maximum('coordinate_id')
    / to make a new record at the lastest coordinate_id/
    
    @outfits = Outfit.where(user_id: current_user.id).joins('LEFT JOIN categories on categories.id = outfits.category_id').order('categories.display_order')
  end
  
  def create
    newcoordinate_params['outfit_id'].each do |t|
    newcoordinate = Newcoordinate.new
    newcoordinate.outfit_id = t
    newcoordinate.coordinate_id = newcoordinate_params['coordinate_id']
    newcoordinate.save
  end
    redirect_to(:back)
  end
  

  /def destroy
    newcoordinate = Newcoordinate.find(params[:id])
    newcoordinate.destroy
    redirect_to(:back)
  end
  /
  private
  def newcoordinate_params
    params.permit(:coordinate_id,outfit_id:[])
  end

end
