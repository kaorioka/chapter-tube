Rails.application.routes.draw do

  devise_for :users 
  root to: "dashboard#index"
  resources :movies do
    resources :chapters
  end

  resources :favorites, only: [:index, :create]
  resources :movies, only: [:index, :show]

  get 'sitemap/index'
  get 'movies/index'
  get 'users/index'
  get 'seaches/index'

end
