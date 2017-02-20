Rails.application.routes.draw do
  resources :users, only: :index
  resources :outfits, only: :index

  end
