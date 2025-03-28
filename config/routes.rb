Rails.application.routes.draw do
  require 'sidekiq/web'
  mount Sidekiq::Web => '/sidekiq'
  post '/register', to: 'auth#register'
  post '/login', to: 'auth#login'


  #  USE RESTFUL ROUTES
  resources :events
  resources :bookings, only: %i(index create)
end
