Marketplace::Application.routes.draw do
  root 'main#index'

  resources :projects
  resources :users
end
