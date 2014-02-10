module ApplicationHelper
  def current_user
    @current_user ||= User.find(cookies[:remember_token]) #||= User.find(1)
  rescue
    User.find(1)
  end

  # @return [user]
  # @param [User] user
  def current_user=(user)
    @current_user = user
  end

  def sign_in(user)
    cookies.permanent[:remember_token] = user.id
    current_user = user
  end

  def set_a=(value)
    @set_a=value
  end
end
