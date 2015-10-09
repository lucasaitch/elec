class ListingsController < ApplicationController

  layout false;

  before_action :confirm_logged_in

  def index
    @listings = Listing.newest_first
     @session_user = User.find(session[:user_id])
     @avatar = @session_user.avatar.url(:thumb)
  end

  def show

  end

  def new
    @listing = Listing.new
  end

  def create
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

  def edit
  end

  def delete
  end

  private
    def listing_params
      # same as using "params[:subject]" except that it
      # - raised an error if :subject is not present
      # - allows listed attributes to be mass-assigned
      params.require(:listing).permit(:name, :description, :price)
    end

end
