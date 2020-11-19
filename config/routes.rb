Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  root to: 'home#page'
  devise_for :users
  resources :tasks
  resources :charities
  resources :interests, only: [:index, :destroy]
  get 'tasks/:id/save', to: 'tasks#save', as: 'save'
  resources :my_requests, only: [:index, :show]
end
