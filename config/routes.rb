Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  resources :users, only: [:index,:show]
  resources :items, only: [:index,:show,:create,:destroy]
  post "/login", to: "sessions#create"
  delete "/logout", to: "sessions#destroy"
  # Defines the root path route ("/")
  root "fallback#index"
  get "*path", to: "fallback#index", constraints: ->(req) { !req.xhr? && req.format.html? }
end
