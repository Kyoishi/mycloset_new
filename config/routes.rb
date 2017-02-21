Rails.application.routes.draw do
  devise_for :users
  resources :forms, only: :index

  resources :outfits, only: [:index, :new, :create]

  end
