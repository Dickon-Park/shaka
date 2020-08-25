Rails.application.routes.draw do

  devise_for :users
  root to: 'pages#home'
  resources :spots do
    resources :favourites, only: [ :new, :create ]
    resources :reviews, only: [ :new, :create ]
    resources :amenities, module: :spots, only: [ :index, :create, :update ]
  end
  resources :favourites, only: [ :destroy ]
  resources :reviews, only: [ :destroy ]
  resources :amenities, only: [ :destroy ]
  resources :users, only: :show
end
