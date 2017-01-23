Rails.application.routes.draw do

  resources :likes
  resources :comments
  resources :posts
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  # Root of website
  root to: 'posts#index'

  get 'login', to: 'sessions#new'

  post 'login', to: 'sessions#create'

  delete 'login', to: 'sessions#destroy'

end
