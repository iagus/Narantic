class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_filter :configure_permitted_parameters, if: :devise_controller?

  def after_sign_in_path_for resource
    main_path
  end

  def after_sign_out_path_for resource
    root_path
  end

  def correct_user
    redirect_to main_path, notice: 'No autorizado' unless current_user.is_user_admin?
  end

  protected

    def configure_permitted_parameters
      devise_parameter_sanitizer.for(:sign_up) { |u| u.permit(:email, :name, :surname, :password, :password_confirmation, :role_id)}
      devise_parameter_sanitizer.for(:sign_in) { |u| u.permit(:email, :name, :surname, :password, :password_confirmation)}
      devise_parameter_sanitizer.for(:account_update) { |u| u.permit(:email, :name, :surname, :password, :password_confirmation, :role_id)}
    end
end
