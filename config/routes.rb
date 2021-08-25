Rails.application.routes.draw do
  get 'top' => 'homes#top'
  root to:'homes#top'
  get 'about' => 'homes#about'
  devise_for :users
  resources :users,only: [:show,:index,:edit,:update]
  resources :books


end