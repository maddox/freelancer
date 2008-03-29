ActionController::Routing::Routes.draw do |map|
  map.resource :sites

  map.resources :pages
  map.resources :clients, :has_many => :projects
  map.resources :projects do |project|
    project.resources :assets, :collection => {:showcase => :get}
    project.resources :asset_categories
  end
  
  map.connect '/:id', :controller => 'pages', :action => 'show'
  
  
  map.home '/', :controller => 'clients', :action => 'index'

end
