Rails.application.routes.draw do
  resources :services, :path => :servicios

  resources :tabulators, :path => :tabuladores do
    resources :services, only: [:index, :create, :new]
  end

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
