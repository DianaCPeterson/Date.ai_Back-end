Rails.application.routes.draw do
  resources :profiles, only: [:index, :create, :show, :update, :destroy] 
  resources :descriptions
  resources :matches, only: [:index, :show, :create, :update, :destroy]
  resources :users
  post '/profile', to: 'profiles#create'
  

  post "/signup", to: "users#create"
  get "/me", to: "users#show"
  post "/user", to: "users#index"
  post "/login", to: "sessions#create"
  delete "/logout", to: "sessions#destroy"
  post "/profile", to: "profile#show"
  get "/user", to: "users#show"
  # get "/match", to: "matches#show"
  # delete "/match", to: "matches#destroy"
  get "/me", to: "matches#show"
  patch "/me", to: "matches#update"
  post "/description", to: "descriptions#create"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  # sessions create_table
  # post method - login
  # change parameters 


end


