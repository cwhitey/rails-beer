Rails.application.routes.draw do

  resources :beers
  root to: 'beers#index'

  devise_for :users, path: "auth"  
  resources :users, only: [:show, :edit, :update] do
    resources :beers, controller: 'users/beers'
  end
  
end
