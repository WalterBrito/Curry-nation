class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  helper_method :sidebar_values
  layout :layout_by_resource
  before_action :configure_permitted_parameters, if: :devise_controller?

  def sidebar_values
    @food_preferences = FoodPreference.all
    @food_types = FoodType.all
    @cuisines = Cuisine.all
  end

  def layout_by_resource
    if devise_controller?
      "authentication"
    else
      "application"
    end
  end

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:username])
  end
end
