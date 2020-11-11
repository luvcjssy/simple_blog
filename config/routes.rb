Rails.application.routes.draw do
  devise_for :users

  resources :posts
  get :dashboard, to: 'dashboard#index'

  root 'posts#index'
end
