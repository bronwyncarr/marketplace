Rails.application.routes.draw do
  root to: 'home#page'
  resources :tasks
  resources :charities
  devise_for :users
  resources :user_tasks
  get 'tasks/:id/save', to: 'tasks#save', as: 'save'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
