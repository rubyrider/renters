Rails.application.routes.draw do
  devise_for :users
  devise_for :admin_users, ActiveAdmin::Devise.config

  ActiveAdmin.routes(self)

  root 'welcome#home'

  get 'welcome/about'

  namespace :dashboard do
    resource :sms_account, only: [:show]

    resources :rent_collections, path: 'rent_collections', only: [:index, :show, :destroy], path: 'rents'

    resources :contracts do
      resources :rent_collections, path: 'rents', as: :property_rent_collections, path: 'rents'
    end
    root 'welcome#dashboard'
    resources :users, only: [:show, :edit, :update]
    resources :properties
    resources :client_properties
    resources :invoices
    namespace :property do
      resources :clients
    end
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
