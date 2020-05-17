Rails.application.routes.draw do
  root  to: 'home#top'
  devise_for :users
  resources :users,only: [:show,:index,:edit,:update]
  resources :books


  get 'home/about' ,to: "home#about"
 end
