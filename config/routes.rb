Rails.application.routes.draw do
  get 'chapter/index'
  root to: "dashboard#index"

end
