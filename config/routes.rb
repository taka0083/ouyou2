Rails.application.routes.draw do
  root  to: 'home#top'
  devise_for :users
  resources :users,only: [:show,:index,:edit,:update] do
  	resource :relationships,only: [:create,:destroy,:index]
    member do
      get :following, :followers
    end
  end
  resources :books do
  	# いいね機能とコメント機能
  	resource :favorites, only: [:create, :destroy]
 	resource :post_comments, only: [:create,:destroy]
  end
  resources :relationships,       only: [:create, :destroy]

  get 'home/about' ,to: "home#about"
 end
