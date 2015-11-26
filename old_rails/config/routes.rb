Rails.application.routes.draw do
  match '*all', to: 'application#preflight', via: [:options]

  root 'static_pages#root'


resources :posts
resources :tags
end
