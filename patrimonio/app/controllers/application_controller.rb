class ApplicationController < ActionController::Base
  include Pundit
  before_action :authenticate_usuario!
  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:nome])
    #devise_parameter_sanitizer.permit(:sign_in, keys: [:nome])
    #devise_parameter_sanitizer.permit(:account_update, keys: [:nome])
  end

  rescue_from Pundit::NotAuthorizedError, with: :user_not_authorized

  private

  def user_not_authorized
     redirect_to root_path
  end

  def pundit_user
     current_usuario
  end

end
