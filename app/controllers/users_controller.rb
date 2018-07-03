class UsersController < ApplicationController
  def profile
    @user = User.friendly.find(params[:user])
  end
end
