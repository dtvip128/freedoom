Rails.application.routes.draw do
  get "/home", to: "homes#index"
  root "homes#index"

  # sessions routes
  post "/login", to: "sessions#create"
  get "/logout", to: "sessions#destroy"
  delete "/logout", to: "sessions#destroy"

  resources :videos
end
