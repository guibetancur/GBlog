Rails.application.routes.draw do
  root 'bienvenido#index'

  resources :articulos do
  	resources :comentarios
  end

end
