Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :users
  resources :trips
  resources :transportations
  resources :places
  resources :luggages
  resources :hotels
  resources :friendships
  resources :friend_requests
  resources :events
end
