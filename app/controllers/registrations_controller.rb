class RegistrationsController < Devise::RegistrationsController

  protected

  def after_update_path_for(resource)
     profile_path(resource)
  end

  private

  def sign_up_params
    params.require(:user).permit(:username, :email, :password, :password_confirmation, :about_me)
  end

  def account_update_params
    params.require(:user).permit(:username, :email, :password, :password_confirmation, :current_password, :about_me)
  end

end
