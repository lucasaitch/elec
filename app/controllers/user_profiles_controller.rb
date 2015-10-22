class UserProfilesController < ApplicationController
  before_action :confirm_logged_in
  def show
    @session_user = User.find(session[:user_id])
     @avatar = @session_user.avatar.url(:thumb)
     @name = @session_user.first_name + " " + @session_user.last_name
     @units = UnitOfStudy.includes(:users).where('users.id' => session[:user_id])
  end


  def edit
   @session_user = User.find(session[:user_id])
     @avatar = @session_user.avatar.url(:thumb)
     @name = @session_user.first_name + " " + @session_user.last_name
     @units = UnitOfStudy.includes(:users).where('users.id' => session[:user_id])
  end

private
  def user_profile_params
    # same as using "params[:subject]" except that it
    # - raised an error if :subject is not present
    # - allows listed attributes to be mass-assigned
    params.require(:user_profile).permit(:first_name, :middle_name, :last_name, :birth_date, :email, :unit_of_study, :avatar)
  end
end
