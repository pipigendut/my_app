Rails.application.routes.draw do
  root to: 'users#index'

  devise_for :users
  resources :users

  get 'landing/index'
  resources :messages, only: [:new, :create]
end
