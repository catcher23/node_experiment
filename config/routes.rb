Rails.application.routes.draw do
  root 'static_pages#root'

resources :posts
resources :tags
end
