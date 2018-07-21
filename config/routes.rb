Rails.application.routes.draw do

  devise_for :users
  resources :users, only: [:index, :show]
  resources :posts do
    resources :comments #, only: [:index, :new, :create, :destroy]
  end
  resources :tags, only: [:index, :show]
  root 'posts#index'
  
end
