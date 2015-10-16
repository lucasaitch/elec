class UserProfileController < ApplicationController




  def session_user
    @session_user = User.find(session[:user_id])
    @avatar = @session_user.avatar.url(:thumb)
  end

  def view
    @session_user = User.find(session[:user_id])
     @avatar = @session_user.avatar.url(:thumb)   
  end

  def edit
  
  end

end

 


