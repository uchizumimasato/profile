Rails.application.routes.draw do
  devise_for :users, controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }
  root 'texts#index'
  resources :users, only: :show
  resources :texts, except: :show
end
