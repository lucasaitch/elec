class UserProfileController < ApplicationController

  layout false;







  def session_user
    @session_user = User.find(session[:user_id])
    @avatar = @session_user.avatar.url(:thumb)
  end

  def view
    @session_user = User.find(session[:user_id])
     @avatar = @session_user.avatar.url(:thumb)   
     @name = @session_user.first_name
  end

  def edit
  
  end

  

end

 


