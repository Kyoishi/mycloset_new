Rails.application.routes.draw do
  resources :forms, only: :index

  resources :users, only: :index do
    resources :outfits, only: [:index, :new]

  end
