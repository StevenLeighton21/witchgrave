Rails.application.routes.draw do
  get 'sessions/new'

  get 'static_pages/home'

  get 'static_pages/help'
  get 'static_pages/landing'

  resources :campaigns,          only: [:create, :destroy]
  resources :users

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'
  root 'static_pages#home'

  get    'signup'  => 'users#new'
  get    'login'   => 'sessions#new'
  post   'login'   => 'sessions#create'
  delete 'logout'  => 'sessions#destroy'
  get    'create_campaign' => 'campaign#new'
end
