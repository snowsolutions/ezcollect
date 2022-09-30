module AuthenticationService
  def verify(email, password)
    user = User.find_by(email: email)
    if user.present? && user.authenticate(password)
      session[:user_id] = user.id
      session[:user] = user
      true
    else
      false
    end
  end
end