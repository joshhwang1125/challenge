Rails.application.routes.draw do
  root to: 'static_pages#root'

  get "home", to: 'static_pages#home'

  namespace :api, defaults: {format: :json} do
    resources :bundles
    resources :tags
    resources :mediafiles
  end
end
