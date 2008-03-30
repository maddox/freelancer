class SitesController < ApplicationController

  skip_before_filter :authenticate, :only => [:stylesheet]
  before_filter :get_site
  
  def edit
  end

  def update
    @site.update_attributes params[:site]
    redirect_to edit_site_path
  end

  def stylesheet
    headers["Content-Type"] = "text/css; charset=utf-8"
    render :text => @site.stylesheet
  end

end
