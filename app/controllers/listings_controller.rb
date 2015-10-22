class ListingsController < ApplicationController
  before_action :confirm_logged_in




  def index
    @listings = Listing.newest_first
     @session_user = User.find(session[:user_id])
    if params[:search]
    @listings = Listing.search(params[:search]).order("created_at DESC")
    else
    @posts = Listing.all.order('created_at DESC')
    end

     @avatar = @session_user.avatar.url(:thumb)
  end

  def show

  end

  def new
    @listing = Listing.new
    @session_user = User.find(session[:user_id])
  end

  def create
    @session_user = User.find(session[:user_id])
    # Instantiate a new object using form parameters
    @listing = Listing.new(listing_params)


    ## Save the object
    if @session_user.listings << @listing
      # If save succeeds, create session and redirect
      flash[:notice] = "Created new listing! Wow!"
      redirect_to(:controller => 'listings', :action => 'index')
    else
      # If save fails, redisplay the form so user can fix problemos
      flash[:notice] = @listing.errors.full_messages
      render('new')
    end
  end

  def update
   @session_user = User.find(session[:user_id])
 @listing = Listing.find(params[:id])
     @listing.update_attributes(listing_params)



    ## Save the object
    if @session_user.listings << @listing
      # If save succeeds, create session and redirect
      flash[:notice] = "Your post was succesfuly edited"
      redirect_to(:controller => 'listings', :action => 'index')
    else
      # If save fails, redisplay the form so user can fix problemos
      flash[:notice] = @listing.errors.full_messages
      render('new')
    end
  end

  def edit
     @listing = Listing.find(params[:id])
     @session_user = User.find(session[:user_id])

  end



  def delete
    @listing = Listing.find(params[:id])
    @listing.destroy
    redirect_to :action => 'index'


  end


  def show_user
    @user_listings = Listing.newest_first.where('owner_id' => session[:user_id])
     @session_user = User.find(session[:user_id])
     @avatar = @session_user.avatar.url(:thumb)


  end

  private
    def listing_params
      # same as using "params[:subject]" except that it
      # - raised an error if :subject is not present
      # - allows listed attributes to be mass-assigned
      params.require(:listing).permit(:name, :description, :price, :avatar, :avatar_file_name)
    end

end
