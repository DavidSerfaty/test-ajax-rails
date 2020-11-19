Rails.application.routes.draw do

  root 'emails#index'
  resources :emails, only: [:create, :show, :destroy, :update]
  resources :books, only: [:create, :index]
  resources :tasks

end
