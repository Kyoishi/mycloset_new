Rails.application.routes.draw do
  
  root 'forms#index'

  devise_for :users

  resources :forms, only: :index
  resources :users, only: [:show, :edit, :update] do
    resources :newcoordinates, only: [:index, :new, :create, :destroy, :edit, :update]
    resources :outfits, only: [:index, :new, :create, :destroy, :edit, :update]
    resources :days, only: [:create, :edit, :update, :destroy] do
      resources :coordinates, only: [:create, :destroy]
    resources :daycoordinates, only: [:new, :create,:destroy]
      end
  end
  
  end
