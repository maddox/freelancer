ActionController::Routing::Routes.draw do |map|

  map.resources :clients, :has_many => :projects
  map.resources :projects do |project|
    project.resources :assets
    project.resources :asset_categories
  end

end
