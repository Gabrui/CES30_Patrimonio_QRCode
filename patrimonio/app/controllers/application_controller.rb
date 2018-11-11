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

end
