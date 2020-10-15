Rails.application.routes.draw do
  devise_for :users
  resources :users
  resources :books
  root 'users#index'
  get root to: "homes#top"
  get "homes/about" =>"homes#about"
end
