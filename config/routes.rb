Rails.application.routes.draw do
  devise_for :accounts
  root to: 'posts#index'
  resources :admin
  resources :posts
  resources :portfolio
end
