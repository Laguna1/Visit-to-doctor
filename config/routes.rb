Rails.application.routes.draw do
  resources :categories
  devise_for :users
  resources :users
  resources :visits
  root 'users#index'
end
