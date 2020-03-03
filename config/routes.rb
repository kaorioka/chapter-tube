Rails.application.routes.draw do

  devise_for :users
  root to: "dashboard#index"
  resources :seaches, only:[:index]
  resources :movies, only: [:index, :show] do
    resources :chapters do
      resources :comments, only: [:create, :destroy, :update]
    end
  end
  resources :favorites, only: [:index, :create]
end
