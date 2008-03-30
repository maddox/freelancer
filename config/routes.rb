ActionController::Routing::Routes.draw do |map|
  map.resource :site

  map.resources :pages 
  map.resources :clients, :has_many => :projects
  map.resources :projects do |project|
    project.resources :assets, :collection => {:showcase => :get}
    project.resources :asset_categories
  end
  
  
  
  map.home '/', :controller => 'pages', :action => 'show', :id => 'home'
  map.stylesheet '/stylesheet', :controller => 'sites', :action => 'stylesheet'

  map.connect '/:id', :controller => 'pages', :action => 'show'

end
