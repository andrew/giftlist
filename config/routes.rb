ActionController::Routing::Routes.draw do |map|
  map.resources :lists

  map.resources :lists, :shallow => true, :member => {:iframe => :any} do |list|
    list.resources :gifts, :has_many => :reservations
  end

  map.resource :account, :controller => "users"
  map.resource :user_session

  map.root :controller => 'lists'
end