Rails.application.routes.draw do
  devise_for :accounts
  root to: 'posts#index'
  resources :admins
  resources :posts
  resources :portfolios
  resources :contacts
end
