Rails.application.routes.draw do

  resources :becks

  get 'pages/about'

  get 'pages/contact'

devise_for :users 
  resources :users do
    resources :moodentries do
  end
end

  root 'pages#about'
end
