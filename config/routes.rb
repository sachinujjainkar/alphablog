Rails.application.routes.draw do
  resources :comments
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'sessions#new'
  resources :pages
  resources :articles

  get 'signup', to: 'users#new'
  post 'pages/alpha',to:'pages#alpha'
  get 'pages/about', to: 'pages#about'
  get 'pages/aboutblog', to: 'pages#aboutblog'
  get 'tutorial', to: 'pages#tutorial'
  # get 'pages/alpha',to:'pages#alpha'
  # # post 'abc', to: 'pages#abc'
  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  delete 'logout' , to: 'sessions#destroy'

  
end
