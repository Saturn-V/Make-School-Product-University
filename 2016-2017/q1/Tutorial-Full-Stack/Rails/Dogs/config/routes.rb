Rails.application.routes.draw do

  get '/dogs', to: 'dogs#index'

  get '/dogs/premiere', to: 'dogs#premiere'

  get '/dogs/new', to: 'dogs#new'

  get '/dogs/:id', to: 'dogs#show'

  post '/dogs', to: 'dogs#create'

end
