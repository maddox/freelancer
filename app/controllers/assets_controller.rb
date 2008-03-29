class AssetsController < ApplicationController
  
  before_filter :find_project

  make_resourceful do
    actions :all
    
    before :index do
      @asset_category = @project.asset_categories.new
    end

    response_for :create do 
      redirect_to project_assets_path(@project)
    end

    response_for :update do 
      redirect_to project_assets_path(@project)
    end

    response_for :destroy do 
      redirect_to project_assets_path(@project)
    end
    
    before :show do
      render :layout => "asset"
    end

  end

  def showcase
    @assets = {}
    @project.asset_categories.each { |cat| (@assets[cat] = cat.assets) }
    render :layout => "showcase"
  end
  
  
  
private
  
  def current_objects
    @current_object = {}
    @project.asset_categories.each { |cat| (@current_object[cat] = cat.assets) }
    @current_object
  end

  def find_project
    @project = Project.find params[:project_id]
  end

end
