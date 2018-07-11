Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html


  get '/login', to: "sessions#new"
  post '/sessions', to: "sessions#create"
  delete '/logout', to: "sessions#destroy", as: 'logout'

  resources :users
  resources :questions
  resources :answers
  resources :user_answers


end
