class SitesController < ApplicationController

  before_filter :get_site
  
  def edit
  end

  def update
    @site.update_attributes params[:site]
    redirect_to edit_site_path
  end

end
