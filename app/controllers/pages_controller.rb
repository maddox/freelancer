class PagesController < ApplicationController
  make_resourceful do
    actions :all
    
    before :show do
      get_site
      @pages = Page.find :all
      render :layout => "site"
    end

  end


private
  def current_object
    @current_object ||= current_model.find_by_slug(params[:id])
  end



end
