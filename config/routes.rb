 Rails.application.routes.draw do

  root 'welcome#index'
  get '/login', to: "sessions#new"
  post '/sessions', to: "sessions#create"
  delete '/logout', to: "sessions#destroy", as: 'logout'
  get '/potential_matches/:id', to: "potential_matches#redirect", as: "redirect_user"
  get '/matches/:id', to: "matches#redirect", as: "redirect_match"
  get '/users', to: "sessions#new"

  resources :users, except: :index
  resources :user_answers

  resources :matches


end
