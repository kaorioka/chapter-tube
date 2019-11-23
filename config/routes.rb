Rails.application.routes.draw do
  get 'seach/index'
  get 'chapter/index'
  root to: "dashboard#index"

end
