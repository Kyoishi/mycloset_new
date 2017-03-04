class UsersController < ApplicationController

  def show
    @user = User.find(params[:id])
    @days = @user.days
    @day = Day.new
    @outfits = @user.outfits
    @coordinate = Coordinate.new
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
