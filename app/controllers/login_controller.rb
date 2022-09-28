class LoginController < ApplicationController
  layout "client"
  include AuthenticationService
  def index; end
  def login
    verify(params[:email],params(:password))
  end
  def logout
    # deletes user session
    session[:user_id] = nil
    redirect_to '/', notice: 'Logged out successfully'
  end
end
