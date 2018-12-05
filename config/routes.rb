Rails.application.routes.draw do
  get 'categories/index_admin'
  get 'categories/show_admin/:id' => 'categories#show_admin'
  resources :categories
  devise_for :accounts
  root to: 'posts#index'
  resources :admins
  resources :posts
  get 'posts/post_categories' => 'posts#post_categories'
  resources :portfolios
  resources :contacts
  resources :comments
end
