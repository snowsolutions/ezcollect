class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  add_flash_types :error, :success
  def after_sign_in_path_for(resource)
    if request.referer == new_identity_session_url
      super
    else
      stored_location_for(resource) || request.referer || root_path
    end
  end
end
