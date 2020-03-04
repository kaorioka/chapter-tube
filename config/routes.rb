Rails.application.routes.draw do

  devise_for :users
  root to: "dashboard#index"
  resources :seaches, only:[:index]
  resources :movies, only: [:index, :show] do
    resources :chapters do
      resources :comments, only: [:create, :destroy, :update]
      resources :favorites, only: [:create, :destroy]
      resources :likes, only: [:create, :destroy]    
    end
  end

  resources :favorites, only: [:index]
  resources :likes, only: [:index]

  # debug終了後に削除
  resources :sitemap, only: [:index]
end
