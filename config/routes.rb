Rails.application.routes.draw do
  resources :users, only: [:new,:create,:show]
  resources :rewards, only: [:index, :show]

  get '/login', to: "sessions#new"
  post '/login', to: "sessions#create"
  delete '/logout', to: 'sessions#destroy'

  resources :rewards_users, only: [:new, :create]

  namespace :admin do
    resources :rewards
    resources :users
  end
end
