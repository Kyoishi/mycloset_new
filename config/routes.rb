Rails.application.routes.draw do
  resources :forms, only: :index

  resources :users, only: :index
  resources :outfits, only: [:index, :new, :create]

  end
