Rails.application.routes.draw do
  resources :roles, only: [:index]
  resources :offices
  devise_for :users
  root to: "home#index"
end
