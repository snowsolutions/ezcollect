class DashboardController < ApplicationController
  layout "client"
  def index
    @user = User.find_by(id: session[:user_id])
    if session[:user_id] == nil
      redirect_to login_url, notice: t('401_notice')
    end
  end
end
