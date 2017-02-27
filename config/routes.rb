Rails.application.routes.draw do
  
  root 'forms#index'

  devise_for :users

  resources :forms, only: :index
  resources :users, only: [:show, :edit, :update] do
    resources :outfits, only: [:index, :new, :create, :destroy]
    resources :days, only: [:new, :create, :show, :destroy] do
      resources :coordinates, only: [:new, :create, :destroy]
      end
  end
  
  end
