Rails.application.routes.draw do

  root 'emails#index'
  resources :emails, only: [:create, :show, :destroy]
  resources :books, only: [:create, :index]
  resources :tasks

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
