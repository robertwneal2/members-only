Rails.application.routes.draw do
  root "users#new"
  devise_for :users
  resources :users, only: [:new, :create]
  resources :posts, only: [:new, :create, :index]
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  
end
