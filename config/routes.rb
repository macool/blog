Blog::Application.routes.draw do

  get :login, to: "sessions#index", as: :login
  get :logout, to: "sessions#destroy", as: :logout
  get :admin, to: "admin#index"

  resources :sessions
  resources :users
  resources :posts do
    resources :comments
  end

  namespace :admin do
    resources :posts
    resources :comments do
      member do
        get :approve, as: :approve
        get :decline, as: :decline
      end
    end
  end

  root to: "posts#index"

  get '*a', :to => 'application#routing_error'
end
