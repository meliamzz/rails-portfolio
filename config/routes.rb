Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get 'about', to: 'pages#about'
  get 'skills', to: 'pages#skills'
  get 'admin', to: 'pages#admin'
  get 'images', to: 'pages#images'

  resources :projects

  resources :contacts
end
