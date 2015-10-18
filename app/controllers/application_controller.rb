class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_action :confirm_logged_in #inherited by all
#  before_action :session_user
  private

  def confirm_logged_in
    unless session[:user_id]
      flash[:notice] = "You do not have permission to be going there"
      redirect_to(:controller => 'access', :action => 'login')
      return false # halts the before_action
    else
      return true
    end
  end

 def session_user
    @session_user = User.find(session[:user_id]) if session[:user_id]
 end

  def avatar
    @avatar = @session_user.avatar.url(:thumb) if session[:user_id]  
  end


end
