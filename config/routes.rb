Rails.application.routes.draw do
root to: "homes#top"
resources :posts
post '/', to: 'posts#create'
end
