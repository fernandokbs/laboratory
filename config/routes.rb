Rails.application.routes.draw do
  resources :services
  resources :tabulators
  resources :type_services
  resources :classifications
  resources :organs
  resources :method_types
  resources :sale_types
  resources :pcr_types
  resources :sample_types
  resources :offices
  devise_for :users
  root to: "home#index"
end
