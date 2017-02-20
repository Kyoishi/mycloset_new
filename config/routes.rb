Rails.application.routes.draw do
  resources :forms, only: :index
  resources :outfits, only: :index
  resources :users, only: :index

  end
