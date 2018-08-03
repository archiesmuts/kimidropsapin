Rails.application.routes.draw do

  devise_for :users
  resources :users, only: [:index, :show]
  resources :posts do
    resources :comments #, only: [:index, :new, :create, :destroy]

    member do
      delete :remove_all_photos
      delete :remove_photo_image
      delete :remove_header_image
    end
  end
  resources :tags, only: [:index, :show]
  resources :all_photos, only: :index
  root 'posts#index'

end
