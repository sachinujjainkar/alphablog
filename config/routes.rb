Rails.application.routes.draw do
  resources :comments
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'pages#index'
  resources :pages
  resources :articles

  get 'signup', to: 'users#new'



  post 'pages/alpha',to:'pages#alpha'
  # get 'pages/alpha',to:'pages#alpha'
  # # post 'abc', to: 'pages#abc'
  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  delete 'logout' , to: 'sessions#destroy'
end
