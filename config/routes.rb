Rails.application.routes.draw do
  devise_for :users 
  get 'sitemap/index'
  get 'movies/index'
  get 'users/index'
  get 'favorites/index'
  get 'seaches/index'
  resources :movies do
    resources :chapters
  end
  root to: "dashboard#index"

end
