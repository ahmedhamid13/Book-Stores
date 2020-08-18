Rails.application.routes.draw do
  devise_for :owners
  devise_for :users
  root to: 'home#index'
  get 'home/index', to: 'home#index', as: 'welcome_index'
end
