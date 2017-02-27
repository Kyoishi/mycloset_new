Rails.application.routes.draw do
  
  root 'forms#index'

  devise_for :users

  resources :forms, only: :index
  resources :users, only: :show do
    resources :outfits, only: [:index, :new, :create, :destroy]
    resources :days, only: [:index, :new, :create, :show] do
      resources :coordinates, only: [:new, :create]
      end
  end
  
  end
