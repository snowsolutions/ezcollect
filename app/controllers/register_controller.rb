# require './app/services/user/register_service.rb'
class RegisterController < ApplicationController
  layout "client"
  include RegisterService
  # instantiates new user
  def index
  end

  def create
    register(user_params)
    redirect_to '/', notice: 'Register OK'
  end

  private
  def user_params
    # strong parameters
    params.require(:user).permit(:username, :name, :email, :password)
  end

end
