ActionController::Routing::Routes.draw do |map|

  map.resources :clients, :has_many => :projects
  map.resources :projects
  map.resources :assets


end
