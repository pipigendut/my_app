Rails.application.routes.draw do
  get 'landing/index'
  resources :messages, only: [:new, :create]

  resources :users
  root to: 'users#index'
end
