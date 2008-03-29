class ClientsController < ApplicationController

  make_resourceful do
    actions :all
    
    response_for :create do
      redirect_to objects_path
    end
  end

end
