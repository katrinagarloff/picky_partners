 Rails.application.routes.draw do

  root 'welcome#index'
  get '/login', to: "sessions#new"
  post '/sessions', to: "sessions#create"
  delete '/logout', to: "sessions#destroy", as: 'logout'

  resources :users
  resources :user_answers

  resources :matches
  resources :potential_matches 

end
