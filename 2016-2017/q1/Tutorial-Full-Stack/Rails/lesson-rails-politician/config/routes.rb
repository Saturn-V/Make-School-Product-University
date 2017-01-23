Rails.application.routes.draw do
  resources :users
  resources :events
  get 'politicians', to: 'politicians#index'
  get 'politicians/:id', to: 'politicians#show'

  get 'events', to: 'events#index'
  get 'events/:id', to: 'events#show'

  get 'users', to: 'users#index'
  get 'users/:id', to: 'politician#show'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
