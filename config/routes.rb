Rails.application.routes.draw do

  devise_for :users
  root to: 'pages#home'
  resources :spots do
    resources :favourites, only: [ :new, :create ]
    resources :reviews, only: [ :new, :create ]
  end
  resources :favourites, only: [ :destroy ]
end
