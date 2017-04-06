module SessionsHelper

  def log_in(user)
    session[:user_id] = user.id
  end
  def log_out
    session[:user_id] = nil
  end

  # Returns current user or nil
  def current_user
    if (user_id = session[:user_id])
      user = User.find_by(id: user_id)
    else
      user = nil
    end
  end
end
