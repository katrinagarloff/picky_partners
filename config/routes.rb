Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :users

  get '/login', to: "sessions#new"
  post '/sessions', to: "sessions#create"
  delete '/sessions', to: "sessions#destroy", as: 'logout'

  resources :quiz, only: [:new, :create]
  resources :results, only: [:show]

end
