Rails.application.routes.draw do
  root to: 'visitors#index'
  devise_for :users
  resources :users
  resources :places do
    resources :reviews, only: [ :create, :edit, :update, :destroy ]
  end
  resources :events
end
