module ApplicationHelper
  def current_user
    if session[:user_id]
      @user = User.find(session[:user_id])
    else
      nil
    end
  end

  def authorize
    redirect_to new_session_path unless current_user
  end
end
