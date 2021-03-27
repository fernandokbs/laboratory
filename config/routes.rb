Rails.application.routes.draw do
  resources :servicetypes
  resources :offices
  devise_for :users
  root to: "home#index"
end
