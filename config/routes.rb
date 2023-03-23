Rails.application.routes.draw do
  get "/home", to: "homes#index"
  root "homes#index"

  # sessions routes
  get "/login", to: "sessions#login"
  post "/login", to: "sessions#create"
end
