require 'subdomain.rb'

TestGa::Application.routes.draw do
  
  constraints(Subdomain) do
    match '/login' => 'sessions#new'
    match '/join' => 'users#new'
  end

  get "sessions/new"

  resources :users
  resources :organizations

  
  
  
  match 'signup',  to: 'organizations#new', as: 'signup'
  get 'login', to: 'sessions#new', as: 'login'
  get 'logout', to: 'sessions#destroy', as: 'logout'

  resources :users
  resources :sessions

  #get "pages/home"
  match '/about', to: 'pages#about', via: 'get'
  match '/contact', to: 'pages#contact', via: 'get'

  root to: 'pages#home'
end
