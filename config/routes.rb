Rails.application.routes.draw do
  devise_for :users
  root to: "dashboard#index"
  get 'users/index'
  get 'favorites/index'
  get 'seaches/index'
  resources :movies do
    resources :chapters do
      resources :comments, only: [:create, :destroy, :update]
    end
  end
end
