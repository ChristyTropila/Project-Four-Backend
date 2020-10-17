Rails.application.routes.draw do
 
  post '/users', to: 'users#create'
  get '/users', to: 'users#index'
  get '/users/:id', to: 'users#show'
  patch '/users/:id', to: 'users#update'
  delete '/users/:id', to: 'users#destroy'

  get '/trivia', to: 'trivia#index'
  get '/trivia/:id', to: 'trivia#show'

  get '/haunted_houses', to: 'haunted_houses#index'
  get '/haunted_houses/:id', to: 'haunted_houses#show'

  get '/trick_treats', to: 'trick_treats#index'
  get '/trick_treats', to: 'trick_treats#show'
  delete '/trick_treats/:id', to: 'trick_treats#destroy'

  get '/buckets', to: 'buckets#index'
  get '/buckets/:id', to: 'buckets#show'
  post '/buckets', to: 'buckets#create'




  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
