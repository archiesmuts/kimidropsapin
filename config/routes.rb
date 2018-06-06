Rails.application.routes.draw do

  resources :comments
  devise_for :users
  resources :users, only: [:index, :show]
  resources :posts do
    resources :comments #, only: [:index, :new, :create, :destroy]
  end
  root 'posts#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
