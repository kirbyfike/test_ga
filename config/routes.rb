TestGa::Application.routes.draw do
  #get "pages/home"
  match '/about', to: 'pages#about', via: 'get'
  match '/contact', to: 'pages#contact', via: 'get'

  root to: 'pages#home'
end
