Rails.application.routes.draw do

  get 'amenities/create'
  get 'amenities/update'
  devise_for :users
  root to: 'pages#home'
  resources :spots do
    resources :favourites, only: [ :new, :create ]
    resources :reviews, only: [ :new, :create ]
  end
  resources :favourites, only: [ :destroy ]
  resources :reviews, only: [ :destroy ]
end
