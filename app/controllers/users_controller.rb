class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @favourites = @user.favourites
  end
end
