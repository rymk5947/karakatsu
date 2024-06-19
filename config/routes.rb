Rails.application.routes.draw do
devise_for :users
root to: "homes#top"
resources :posts
post '/', to: 'posts#create'
resources :users
end
