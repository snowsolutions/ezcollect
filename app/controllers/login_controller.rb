class LoginController < ApplicationController
  layout "client"
  include AuthenticationService

  def index
    redirect_to dashboard_url if session[:user_id]
  end

  def login
    if verify(params[:email], params[:password])
      redirect_to dashboard_url, success: t('login_message')
    else
      redirect_to '/', error: t('login_invalid_message')
    end
  end

  def logout
    # deletes user session
    session[:user_id] = nil
    redirect_to login_url, success: t('logout_message')
  end
end
