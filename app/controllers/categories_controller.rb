class CategoriesController < ApplicationController
  
  before_action :confirm_logged_in
  
  def index
    @categories = Category.all.order("name ASC")
    @toplevel_categories = Category.where(:parent_category_id => nil)
#     @categories = Category.all.order("name ASC")
  end

  def show
    @category = Category.find(params[:id])
    
    @subcategories = Category.find(:all, :conditions => {:parent_category_id => params[:id]})
  end
end
