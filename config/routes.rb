ActionController::Routing::Routes.draw do |map|
  map.resources :lists

  map.namespace :admin do |admin|
    admin.resources :gifts, :has_many => :reservations
    admin.resources :reservations
  end

  map.resources :lists, :shallow => true do |list|
    list.resources :gifts, :has_many => :reservations
  end

  map.resource :account, :controller => "users"
  map.resource :user_session

  map.root :controller => 'lists'
end