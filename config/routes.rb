Rails.application.routes.draw do
  devise_for :users
  root 'prototypes#index'
  resources :prototypes do
    resources :comments, only: [:show, :create, :edit, :destroy, :update]
    resources :likes, only: [:create, :destroy]
  end
  resources :users, only: [:show, :edit, :update]
  resources :tags, only: [:index, :show]
end
