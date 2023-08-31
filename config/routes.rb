Rails.application.routes.draw do
  get 'pages/home'
  get 'pages/restricted'
  resources :order_items
  resources :orders
  resources :authors
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
