class PagesController < ApplicationController
  
  skip_before_filter :authenticate, :only => [:show]
  
  make_resourceful do
    actions :all
    
    before :show do
      get_site
      @pages = Page.find :all, :order => :position
      render :layout => "site"
    end
    
    response_for :create do 
      redirect_to objects_path
    end

    response_for :update do 
      redirect_to objects_path
    end

  end

  def sort
    load_objects
    
    @pages.each do |page|
      page.position = params[:pages].index("page_" + page.id.to_s) + 1
      page.save
    end 
    
    respond_to do |format|
      format.html
      format.js
    end

  end




private
  def current_object
    @current_object ||= current_model.find_by_slug(params[:id])
  end

  def current_objects
    @current_objects ||= current_model.find(:all, :order => :position)
  end



end
