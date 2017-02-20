Rails.application.routes.draw do
  resources :outfits, only: :index
  resources :users, only: :index

  end
