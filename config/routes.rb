Rails.application.routes.draw do

  resources :beers
  root to: 'beers#index'

  devise_for :users, path: "auth"  
  resources :users, only: [:index, :show, :edit, :update, :destroy] do
    resources :beers, except: [:show], controller: 'users/beers'
  end
  
end
