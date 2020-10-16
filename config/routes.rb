Rails.application.routes.draw do
  resources :buckets
  resources :trick_treats
  resources :trivia
  resources :haunted_houses
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
