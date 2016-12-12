class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :configure_permitted_parameters, if: :devise_controller?
  before_action :authenticate_user!

  rescue_from ActiveRecord::RecordNotFound do
    flash[:warning] = 'Resource not found.'
    redirect_back_or root_path
  end

  def redirect_back_or(path)
    redirect_to request.referer || path
  end


  def configure_permitted_parameters
    # For additional fields in app/views/devise/registrations/new.html.erb
    devise_parameter_sanitizer.permit(:sign_up, keys: [:first_name, :last_name, :profile_pic_url, :profile_pic_url_cache, :street1, :postcode, :city, :country, :bio])

    # For additional in app/views/devise/registrations/edit.html.erb
    devise_parameter_sanitizer.permit(:account_update, keys: [:first_name, :last_name, :profile_pic_url, :profile_pic_url_cache, :street1, :postcode, :city, :country, :profile_pic_url, :remove_profile_pic_url, :bio])
  end
end





# validates :first_name, presence: true
  # validates :last_name, presence: true
  # validates :email, presence: true, uniqueness: true
  # validates :profile_pic_url, presence: true
  # validates :street1, presence: true

  # validates :postcode, presence: true
  # validates :city, presence: true
  # validates :country, presence: true
