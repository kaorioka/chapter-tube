Rails.application.routes.draw do
  get 'movies/index'
  get 'seach/index'
  resources :movies do
    resources :chapters
  end
  root to: "dashboard#index"

end
