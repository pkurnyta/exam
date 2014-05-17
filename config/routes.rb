Rails.application.routes.draw do

  get 'people/show'

  get 'search/index'

  get 'home/index'

  resources :movies, only: :show
  resources :people, only: :show

  match "search", to: "search#index", via: :get

  # You can have the root of your site routed with "root"
  root 'home#index'

end
