Rails.application.routes.draw do
  resources :invoices
  namespace :property do
    resources :collections
  end
  devise_for :users
  devise_for :admin_users, ActiveAdmin::Devise.config

  ActiveAdmin.routes(self)

  root 'welcome#home'

  get 'welcome/about'

  namespace :dashboard do
    root 'welcome#dashboard'
    resources :users, only: [:show, :edit, :update]
    resources :properties
    resources :client_properties
    namespace :property do
      resources :clients
    end
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
