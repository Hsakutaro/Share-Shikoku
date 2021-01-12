Rails.application.routes.draw do
  root to: 'prefectures#index'
  
  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'

  get 'signup', to: 'users#new'
  
  get 'prefectures/:id', to: 'prefectures#show'
  
  get 'users/:id', to: 'prefectures#show'
  
  resources :users, only: [:new, :create]
  resources :posts, only: [:create, :destroy]
  resources :prefectures, only: [:show, :index]
end
