Rails.application.routes.draw do
  root 'bienvenido#index'

  resources :articulos
end
