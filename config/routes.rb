Rails.application.routes.draw do
  resources :users, only: [:new,:create,:show]
  resources :rewards, only: [:index, :show]
  resources :points, only: [:show]

  get '/login', to: "sessions#new"
  post '/login', to: "sessions#create"
  delete '/logout', to: 'sessions#destroy'

  namespace :admin do
    resources :rewards
    resources :points
    resources :users 
  end
end
