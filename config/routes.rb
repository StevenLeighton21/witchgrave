Rails.application.routes.draw do
  get 'sessions/new'

  get 'static_pages/home'
  get 'static_pages/contact'
  get 'static_pages/help'
  get 'static_pages/landing'

  resources :campaigns
  resources :users
  resources :frost_grave_participants

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'
  root 'static_pages#home'

  get    'help'    => 'static_pages#help'
  get    'signup'  => 'users#new'
  get    'landing' => 'users#show'
  get    'login'   => 'sessions#new'
  post   'login'   => 'sessions#create'
  delete 'logout'  => 'sessions#destroy'
  get    'create_fg_participant' => 'frost_grave_participant#new'
  get    'create_campaigns' => 'campaigns#new'
  get    'edit_campaign' => 'campaigns#edit'
  delete 'delete_campaign' => 'campaigns#destroy'
end
