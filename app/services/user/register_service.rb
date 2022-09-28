module RegisterService
  def register(user_params)
    user= User.new(user_params)
    user.save
    session[:user_id] = user.id
  end
end