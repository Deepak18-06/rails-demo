Rails.application.routes.draw do
  get '/signup', to: "users#new", as: 'signup'
  post '/users', to: 'users#create'
  
  get 'users/home'

  get '/signin', to: 'users#signin', as: 'signin'
  post '/signin', to: 'users#authenticate'

  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  root "users#home"
end
