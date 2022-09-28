class HomepageController < ApplicationController
  layout "client"
  def index
    @title = 'A good title'
  end
end
