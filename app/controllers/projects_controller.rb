class ProjectsController < ApplicationController

  make_resourceful do
    actions :all
    belongs_to :client

    response_for :create do
      redirect_to objects_path
    end

  end

end
