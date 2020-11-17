Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  root to: 'home#page'
  devise_for :users
  resources :roles
  resources :tasks
  resources :charities
  resources :interests
  get 'tasks/:id/save', to: 'tasks#save', as: 'save'
  resources :my_requests
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
