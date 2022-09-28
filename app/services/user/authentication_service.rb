module AuthenticationService
  def verify(email, password)
    user = User.find_by(email: email)
    if user.present? && user.authenticate(password)
      true
    else
      false
    end
  end
end