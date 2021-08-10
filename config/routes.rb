Rails.application.routes.draw do
  get '/register', to: 'players#new'
end