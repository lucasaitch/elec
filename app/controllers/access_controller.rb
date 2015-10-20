class AccessController < ApplicationController

  before_action :confirm_logged_in, :except => [:login, :attempt_login, :register, :create, :index]

  def index
  end

  def login
  end

  def attempt_login
    if params[:email].present? && params[:password].present?
      temp_user = User.where(:email => params[:email]).first
      if temp_user
        auth_user = temp_user.authenticate(params[:password])
      end
    end
    if auth_user
      # Log user in
      session[:user_id] = auth_user.id
      session[:email] = auth_user.email
      flash[:notice] = "Log in successful"
      redirect_to(:controller => 'listings', :action => 'index')
    else
      flash[:notice] = "Invalid details"
      redirect_to(:action => 'login')
    end
  end

  def logout
    # Log user out
    session[:user_id] = nil
    session[:email] = nil
    flash[:notice] = "Logged out"
    redirect_to(:action => 'login')
  end

  def register
    @user = User.new
  end

  def create
    # Instantiate a new object using form parameters
    @user = User.new(user_params)

    ## Save the object
    if @user.save
      # If save succeeds, create session and redirect
      flash[:notice] = "Created your account! Good work!"
      session[:user_id] = @user.id
      session[:email] = @user.email
      redirect_to(:controller => 'listings', :action => 'index')
    else
      # If save fails, redisplay the form so user can fix problemos
      flash[:notice] = @user.errors.full_messages
      render('register')
    end
  end

  private
    def user_params
      # same as using "params[:subject]" except that it
      # - raised an error if :subject is not present
      # - allows listed attributes to be mass-assigned
      params.require(:user).permit(:first_name, :middle_name, :last_name, :birth_date, :email, :password, :avatar,
      {:unit_of_study_ids => []})
    end
private
  def unit_of_study_params
    params.require(:unit_of_study).permit(:name)
  end

end
