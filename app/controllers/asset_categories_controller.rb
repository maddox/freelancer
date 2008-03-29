class AssetCategoriesController < ApplicationController

  make_resourceful do
    actions :create, :destroy
    belongs_to :project
  end

end
