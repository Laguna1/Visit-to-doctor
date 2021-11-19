Rails.application.routes.draw do
  devise_for :users
  resources :users
  resources :visits
  resources :categories
  
  root 'users#index'
end
