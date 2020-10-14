Rails.application.routes.draw do
  devise_for :users
  root 'users#show'
  resources :users
  resources :books
  get "/" => "homes#top"
  get "homes/about" =>"homes#about"
end
