Rails.application.routes.draw do
  resources :items
  resources :rentals
  resources :own_items
  resources :users
  resources :requests
  # login
  post '/login', to: 'auth#create'
  get '/auto_login', to: 'auth#auto_login'
end