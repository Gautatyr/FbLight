Rails.application.routes.draw do
  resources :posts do
    resources :comments, only: [:create, :destroy]
  end

  devise_for :users
  resources :users

  resources :likes, only: [:create, :destroy]
  root "users#new"
end
