Rails.application.routes.draw do
  root to: 'home#page'
  resources :tasks
  devise_for :users
  resources :user_tasks

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
