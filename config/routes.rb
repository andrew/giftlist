ActionController::Routing::Routes.draw do |map|
  map.namespace :admin do |admin|
    admin.resources :gifts, :has_many => :reservations
    admin.resources :reservations
  end

  map.resources :gifts, :only => :index do |gift|
    gift.resources :reservations, :only => [:new, :create]
  end

  map.root :controller => 'gifts'
end