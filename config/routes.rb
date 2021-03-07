Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :users

  root to: 'pages#home'
  resources :users, only: [:index, :show]

  resources :bodies, only: [:index, :show, :new, :create, :edit, :update, :delete]
end
