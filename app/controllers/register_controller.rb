# require './app/services/user/register_service.rb'
class RegisterController < ApplicationController
  layout "client"
  include RegisterService
  # instantiates new user
  def index
  end

  def create
    register(handle_params)
    redirect_to '/', success: t('register_success_message')
  end

  private
  def handle_params
    # strong parameters
    params.require(:user).permit(:name, :email, :password)
  end

end
