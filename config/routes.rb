Rails.application.routes.draw do
  devise_for :users 
  get 'users/index'
  get 'favorites/index'
  get 'seaches/index'
  resources :movies do
    resources :chapters do
      resources :comments, only: [:create, :destroy, :update]
    end
  end
  root to: "dashboard#index"

end
