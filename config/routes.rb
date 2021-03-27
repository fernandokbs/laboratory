Rails.application.routes.draw do
  resources :method_types
  resources :sale_types
  resources :pcr_types
  resources :sample_types
  resources :servicetypes
  resources :offices
  devise_for :users
  root to: "home#index"
end
