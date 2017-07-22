class ArticulosController < ApplicationController
  def index
    @articulos = Articulo.all
  end

  def new
    @articulo = Articulo.new
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

  def show
    @articulo = Articulo.find(params[:id])
  end

  def edit
    @articulo = Articulo.find(params[:id])
  end

  def update
    @articulo = Articulo.find(params[:id])
 
    if @articulo.update(articulo_params)
      redirect_to @articulo
    else
      render :edit
    end
  end
  
  def destroy
  end

  private
    def articulo_params
      params.require(:articulo).permit(:titular, :contenido)
    end

end
