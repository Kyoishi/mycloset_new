class UsersController < ApplicationController

  def show
    @user = User.find(params[:id])
    @days = @user.days
  end

end
