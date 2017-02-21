Rails.application.routes.draw do
  devise_for :users
  resources :forms, only: :index
  resources :users, only: :show do
    resources :outfits, only: [:index, :new, :create]
  end
  
  end
