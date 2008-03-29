class AssetsController < ApplicationController

  make_resourceful do
    actions :all
    belongs_to :project
  end

end
