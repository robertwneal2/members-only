Rails.application.routes.draw do
  root "posts#index"
  devise_for :users, :controllers => { registrations: 'users/registrations' }
  # resources :users, only: [:new, :create]
  resources :posts, only: [:new, :create, :index]
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "users#index"
  
end
