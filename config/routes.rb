Rails.application.routes.draw do
  post '/register', to: 'auth#register'
  post '/login', to: 'auth#login'


  #  USE RESTFUL ROUTES
  resources :events
  resources :bookings, only: %i(index create)
end
