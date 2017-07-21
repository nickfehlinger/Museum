Rails.application.routes.draw do
  resources :locations
  get 'locations/new'

  get 'locations/create'

  get 'location/new'

  get 'location/create'

  resources :owners
  resources :artists
  resources :media
  resources :techniques
  resources :styles
  resources :people
  resources :pieces
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root to: "home#index"
end
