class ApplicationController < ActionController::Base



  protect_from_forgery with: :exception
  before_action :configure_permitted_parameters, if: :devise_controller?
  #After_action to reroute after a user signs up or whatever their last action is



  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name])
    devise_parameter_sanitizer.permit(:account_update, keys: [:name])
  end

  def after_sign_in_path_for(resource)
      request.env['omniauth.origin'] || stored_location_for(resource) || user_path(resource)
      #session[:user] = resource
  end

  def after_sign_up_path_for(resource)
      request.env['omniauth.origin'] || stored_location_for(resource) || new_parent_path
      #Trying to figure out how to save the user, so after you are done with creating
      # a new parent, you can be rerouted to the right user page
  end

  





end
