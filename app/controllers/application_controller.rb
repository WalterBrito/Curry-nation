class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  helper_method :sidebar_values

  def sidebar_values
    @food_preferences = FoodPreferenc.all
    @food_types = FoodType.all
    @cuisines = Cuisine.all
  end
end
