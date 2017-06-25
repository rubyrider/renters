Rails.application.routes.draw do
  namespace :property do
    resources :collections
  end
  devise_for :users
  devise_for :admin_users, ActiveAdmin::Devise.config

  ActiveAdmin.routes(self)

  root 'welcome#home'

  get 'welcome/about'

  resources :users, only: [:show, :edit, :update]
  resources :properties

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
