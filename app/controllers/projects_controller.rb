class ProjectsController < ApplicationController

  make_resourceful do
    actions :all
    belongs_to :client
  end

end
