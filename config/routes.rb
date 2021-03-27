Rails.application.routes.draw do
  resources :sample_types
  resources :servicetypes
  resources :offices
  devise_for :users
  root to: "home#index"
end
