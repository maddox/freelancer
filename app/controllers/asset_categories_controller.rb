class AssetCategoriesController < ApplicationController

  make_resourceful do
    actions :create, :destroy
    belongs_to :project
    
    response_for :create do
      redirect_to project_assets_path(@project)
    end

    response_for :create do
      redirect_to project_assets_path(@project)
    end

  end

end
