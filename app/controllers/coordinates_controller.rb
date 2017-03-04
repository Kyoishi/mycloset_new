class CoordinatesController < ApplicationController

  def create
    Coordinate.create(coordinate_params)
    redirect_to(:back)
  end

  def destroy
    coordinate = Coordinate.find(params[:id])
    coordinate.destroy
    redirect_to(:back)
  end

  private
  def coordinate_params
    params.require(:coordinate).permit(:day_id,:outfit_id)
  end

end
