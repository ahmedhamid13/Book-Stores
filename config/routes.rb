Rails.application.routes.draw do
  resources :reviews
  resources :rates
  resources :store_books
  resources :books
  resources :social_links
  resources :addresses
  resources :stores
  resources :genres
  resources :authors
  devise_for :owners
  devise_for :users
  root to: 'home#index'
  get 'home', to: 'home#index', as: 'welcome_index'
  get 'api', to: 'end_points#index', as: 'api'
end
