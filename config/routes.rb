Rails.application.routes.draw do
  get 'sessions/new'

  get 'static_pages/home'
  get 'static_pages/contact'
  get 'static_pages/help'
  get 'static_pages/landing'

  resources :campaigns
  resources :users
  resources :frost_grave_participants
  resources :spells
  resources :base_of_operations

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'
  root 'static_pages#home'
  get    'create_base'  => 'base_of_operations#new'
  get    'base_of_operations_index'  => 'base_of_operations#index'
  post   'base_of_operations_index' => 'base_of_operations#create'
  get    'edit_base'    => 'base_of_operations#edit'
  delete 'delete_base'  => 'base_of_operations#destroy'
  get    'create_spell' => 'spells#new'
  get    'edit_spell'   => 'spells#edit'
  delete 'delete_spell' => 'spells#destroy'
  get    'help'         => 'static_pages#help'
  get    'signup'       => 'users#new'
  get    'landing'      => 'users#show'
  get    'login'        => 'sessions#new'
  post   'login'        => 'sessions#create'
  delete 'logout'       => 'sessions#destroy'
  get    'create_fg_participant' => 'frost_grave_participant#new'
  get    'create_campaigns'      => 'campaigns#new'
  get    'edit_campaign'         => 'campaigns#edit'
  delete 'delete_campaign'       => 'campaigns#destroy'
  delete 'delete_frostgrave_participant' => 'frost_grave_participants#destroy'
end
