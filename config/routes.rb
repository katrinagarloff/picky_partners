 Rails.application.routes.draw do

  root 'welcome#index'
  get '/login', to: "sessions#new"
  post '/sessions', to: "sessions#create"
  delete '/logout', to: "sessions#destroy", as: 'logout'
  get '/potential_matches/:id', to: "potential_matches#redirect", as: "redirect_user"
  resources :users
  resources :user_answers

  resources :matches


end
