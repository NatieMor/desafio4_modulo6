Rails.application.routes.draw do
  resources :pets
  resources :names
  resources :orders
  resources :clients
  resources :products
  resources :categories
  #get 'welcome/index'
  get '/welcome', to: "welcome#index"
  
  get 'vendedor/index'
  #get 'home/index'
  get '/home', to: "home#index"
  # Defines the root path route ("/")
  root "welcome#index"

  devise_for :users, controllers: {
    sessions: 'users/sessions',
    registrations: 'users/registrations'
  }

=begin
  unauthenticated do
    root :to => 'welcome#index'
  end

  authenticated do
    root :to => 'home#index'
  end
=end
end
