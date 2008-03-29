ActionController::Routing::Routes.draw do |map|

  map.resources :clients, :has_many => :projects
  map.resources :projects do |project|
    project.resources :assets, :collection => {:showcase => :get}
    project.resources :asset_categories
  end
  
  map.home '/', :controller => 'clients', :action => 'index'

end
