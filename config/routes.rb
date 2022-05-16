Rails.application.routes.draw do

  get 'homes/top'
  devise_for :users
  root to: 'homes#top'
  get "home/about" => "homes#about", as: "about"
  patch 'users/:id' => 'users#update', as: 'update_user'

  resources :books, only: [:new, :create, :index, :show, :destroy, :edit, :update]
  resources :users, only: [:show, :edit, :index, :update, :destroy]


end
