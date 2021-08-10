Rails.application.routes.draw do
  get '/register', to: 'players#new'
  post '/players', to: 'players#create'

  get '/login', to: 'sessions#new'
  post '/sessions', to: 'sessions#create'

  root 'application#home'
end