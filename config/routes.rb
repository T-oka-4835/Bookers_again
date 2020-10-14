Rails.application.routes.draw do
  devise_for :users
  get "/" => "homes#top"
  get "homes/about" =>"homes#about" 
end
