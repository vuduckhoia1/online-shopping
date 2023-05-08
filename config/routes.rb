Rails.application.routes.draw do
  resources :suppliers
  resources :users, except: %i[ new create edit ]
  devise_for :users, path: '', path_names: { sign_in: 'login', sign_out: 'logout',
        password: 'forgot-password', confirmation: 'verification', sign_up: 'sign_up' }

  root 'home#index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
