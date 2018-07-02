class UsersController < ApplicationController
  before_action :authenticate_user!

  def profile
    @user = User.friendly.find(params[:user])
  end

  def edit
  end
end
