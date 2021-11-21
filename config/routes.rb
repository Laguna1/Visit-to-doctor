Rails.application.routes.draw do
  resources :roles
  devise_for :users
  resources :users
  resources :visits
  resources :categories
  
  root 'users#index'
end
