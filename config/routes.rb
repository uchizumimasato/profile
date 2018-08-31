Rails.application.routes.draw do
  devise_for :users
  root 'texts#index'
  resources :users, only: :show
  resources :texts, except: :show
end
