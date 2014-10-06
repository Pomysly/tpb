Rails.application.routes.draw do

  resources :abcs

  resources :schemas
  resources :becks
  resources :moodentries

  get 'pages/about'

  get 'pages/contact'

devise_for :users 

  root 'pages#about'
end
