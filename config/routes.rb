Rails.application.routes.draw do
  get 'categories/index_admin'
  get 'categories/show_admin/:id' => 'categories#show_admin'
  resources :categories
  devise_for :accounts
  as :accounts do
    get 'accounts/edit' => 'devise/registrations#edit', :as => 'edit_user_registration'
    put 'accounts' => 'devise/registrations#update', :as => 'user_registration'
  end
  root to: 'posts#index'
  resources :admins
  resources :posts
  get 'posts/post_categories' => 'posts#post_categories'
  resources :portfolios
  resources :contacts
  resources :comments
end
