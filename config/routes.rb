Rails.application.routes.draw do
  get 'pages/about'

  get 'pages/contact'

devise_for :users
  resources :categories do
    resources :products do
      resources :pictures
    end
  end

  root 'categories#index'
end
