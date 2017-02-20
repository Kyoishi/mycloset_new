Rails.application.routes.draw do
  resources :forms, only: :index
  resources :outfits, only: :index, :new
  resources :users, only: :index

  end
