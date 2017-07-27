# == Route Map
#
#                   Prefix Verb   URI Pattern                                            Controller#Action
#                     root GET    /                                                      bienvenido#index
#     articulo_comentarios GET    /articulos/:articulo_id/comentarios(.:format)          comentarios#index
#                          POST   /articulos/:articulo_id/comentarios(.:format)          comentarios#create
#  new_articulo_comentario GET    /articulos/:articulo_id/comentarios/new(.:format)      comentarios#new
# edit_articulo_comentario GET    /articulos/:articulo_id/comentarios/:id/edit(.:format) comentarios#edit
#      articulo_comentario GET    /articulos/:articulo_id/comentarios/:id(.:format)      comentarios#show
#                          PATCH  /articulos/:articulo_id/comentarios/:id(.:format)      comentarios#update
#                          PUT    /articulos/:articulo_id/comentarios/:id(.:format)      comentarios#update
#                          DELETE /articulos/:articulo_id/comentarios/:id(.:format)      comentarios#destroy
#                articulos GET    /articulos(.:format)                                   articulos#index
#                          POST   /articulos(.:format)                                   articulos#create
#             new_articulo GET    /articulos/new(.:format)                               articulos#new
#            edit_articulo GET    /articulos/:id/edit(.:format)                          articulos#edit
#                 articulo GET    /articulos/:id(.:format)                               articulos#show
#                          PATCH  /articulos/:id(.:format)                               articulos#update
#                          PUT    /articulos/:id(.:format)                               articulos#update
#                          DELETE /articulos/:id(.:format)                               articulos#destroy
# 

Rails.application.routes.draw do
  root 'bienvenido#index'
  devise_for :users

  resources :articulos do
  	resources :comentarios
  end

end
