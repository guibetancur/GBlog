class ComentariosController < ApplicationController
	before_action :authenticate_user!


	def create
	    @articulo = Articulo.find(params[:articulo_id])
	    @comentario = @articulo.comentarios.build(comentario_params)
	    #@comentario = @articulo.comentarios.create(comentario_params)

	    if @comentario.save
	      redirect_to @articulo
	    else
	      redirect_to @articulo
	    end
	end

	def destroy
	    @articulo = Articulo.find(params[:articulo_id])
	    @comentario = @articulo.comentarios.find(params[:id])
	    @comentario.destroy
	    redirect_to articulo_path(@articulo)
	 end

  	private
	    def comentario_params
	      params.require(:comentario).permit(:comentarista, :contenido)
	    end

end
