Rails.application.routes.draw do
  resources :reviews
  resources :notifications
  resources :items
  resources :rentals
  resources :own_items
  resources :images
  resources :users
  resources :requests
  resources :notification_feeds
  # login
  post '/login', to: 'auth#create'
  get '/auto_login', to: 'auth#auto_login'

  mount ActionCable.server => '/cable'
end
