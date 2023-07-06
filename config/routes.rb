Rails.application.routes.draw do
  resources :products
  resources :brands
  resources :categories
  resources :reviews
  resources :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  root 'pages#home'
  get '/home', to: 'brands#index'
  get '/menu', to: 'pages#menu'
  get '/about', to: 'pages#about'
  get '/products', to: 'products#index'
  get '/about', to: 'pages#about', as: 'about_page'
  get '/data_collection', to: 'data#index', as: 'data_collection'
  get 'brands', to: 'brands#index'
  get '/categories', to: 'categories#index'
  get '/reviews', to: 'reviews#index', as: 'all_reviews'
  get '/users', to: 'users#index', as: 'all_users'
  # Defines the root path route ("/")
  # root "articles#index"
end
