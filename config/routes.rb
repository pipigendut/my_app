Rails.application.routes.draw do
  root to: 'home#index'

  devise_for :users
  resources :users
  resources :home, only: [:index]

  get 'landing/index'
  resources :messages, only: [:new, :create]
end
