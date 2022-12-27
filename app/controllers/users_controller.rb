class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @nickname = current_user.nickname
    @heritages = current_user.heritages
    @profile = current_user.profile
  end
end
