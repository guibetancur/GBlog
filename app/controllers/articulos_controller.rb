class ArticulosController < ApplicationController
  def index
    @articulos = Articulo.all
  end

  def create
    #render plain: params[:articulo].inspect
    #@articulo = Articulo.new(params[:articulo])
    @articulo = Articulo.new(articulo_params)
 
    if @articulo.save
      redirect_to @articulo
      #redirect_to articulos_path
      #redirect_to articulo_path(@articulo)
    else
      #redirect_to new_articulo_path
      render :new
    end
  end

  def new
    @articulo = Articulo.new
  end

  def edit
  end

  def show
    @articulo = Articulo.find(params[:id])
  end

  def update
  end

  def destroy
  end

  private
    def articulo_params
      params.require(:articulo).permit(:titular, :contenido)
    end

end
