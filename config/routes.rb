Blog::Application.routes.draw do

  get :login, to: "sessions#index", as: :login
  get :logout, to: "sessions#destroy", as: :logout

  resources :sessions
  resources :users
  resources :posts
  resources :comments

  namespace :admin do
    resources :posts
  end

  root to: "posts#index"

  get '*a', :to => 'application#routing_error'
end
