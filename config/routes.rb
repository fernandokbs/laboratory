Rails.application.routes.draw do
  resources :types
  devise_for :users
  root to: "home#index"
end
