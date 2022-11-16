class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters #(設定_許可された_パラメーター)
    decise_parameter_sanitizer.parmit(:sign_up, keys: [:name, :email])
    devise_parameter_sanitizer.parmit(:sign_in, keys: [:email])
  end

end
