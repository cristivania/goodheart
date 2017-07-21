module ApplicationHelper
  def user_role(current_user)
    if current_user.role == 'donor'
      return true
    else
      return false
    end
  end
end
