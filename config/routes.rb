Rails.application.routes.draw do
  get 'favourites/new'
  get 'favourites/create'
  get 'favourites/destroy'
  devise_for :users
  root to: 'pages#home'
  resources :spots do
    resources :reviews, only: [ :new, :create ]
  end
end
