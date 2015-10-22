class UsersController < ApplicationController
  before_action :confirm_logged_in

  def new
    @user = User.new
    @user_unit_of_study = @user.user_unit_of_studies.build
  end

  def create
  end

  def edit
    @user = User.find(session[:user_id])

  end

  def show
    @session_user = User.find(session[:user_id])
     @avatar = @session_user.avatar.url(:thumb)
     @name = @session_user.first_name + " " + @session_user.last_name
    # @units = UnitOfStudy.includes(:users).where('users.id' => session[:user_id])
  end

  def update
    @user = User.find(session[:user_id])
    if @user.update_attributes(user_params)
      flash[:success] = "Profile updated"
      redirect_to "/users/show"
    else
      flash[:notice] = "fail"
      render 'edit'
    end
  end

  def destroy
    User.find(session[:user_id]).destroy
    flash[:success] = "User deleted"
    session[:user_id] = nil
    session[:email] = nil
    redirect_to "/"
  end


  private
    def user_params
      # same as using "params[:subject]" except that it
      # - raised an error if :subject is not present
      # - allows listed attributes to be mass-assigned
      params.require(:user).permit(:first_name, :middle_name, :last_name, :birth_date, :email, :unit_of_study, :avatar)
    end
end
