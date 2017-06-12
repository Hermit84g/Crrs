Rails.application.routes.draw do
  root   'static_pages#home'

  get 'static_pages/home'

  get 'static_pages/help'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
#  root   'users#index'
  get    'sessions/new'
  get    '/signup',  to: 'users#new'
  post   '/signup',  to: 'users#create'
  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'
  get    '/ctrl',    to: 'crs#ctrl'
  resources :users
  #resources :crs,		only:[:new, :create, :edit, :destroy, :show]
  resources :crs do
    collection do
      get :ctrl
      post :ctrl
    end  
  end
end
