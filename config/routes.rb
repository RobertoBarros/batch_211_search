Rails.application.routes.draw do
  root to: 'searches#index'
  resources :movies, only: :index
  resources :searches, only: :index
end
