Rails.application.routes.draw do
  resources :articles, only: [:index, :show]

  post "/login", to: "sessions#create" #handle the login
  get "/me", to: "users#show" #stay logged in
  delete "/logout", to: "sessions#destroy" #logout
end
