Rails.application.routes.draw do
  root  to: 'home#top'
  devise_for :users
  resources :users,only: [:show,:index,:edit,:update]
  resources :books do
  	# いいね機能とコメント機能
  	resource :favorites, only: [:create, :destroy]
 	resource :post_comments, only: [:create]
  end

  get 'home/about' ,to: "home#about"
 end
