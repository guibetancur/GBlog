class ArticulosController < ApplicationController
  # callback de devise
  before_action :authenticate_user!, except: [ :index, :show ]


  def index
    @articulos = Articulo.all
  end

  def new
    @articulo = Articulo.new
    @title = "Nuevo"
  end

  def create
    #render plain: params[:articulo].inspect
    #@articulo = Articulo.new(params[:articulo])
    @articulo = Articulo.new(articulo_params)
    @articulo.user = current_user

    if @articulo.save
      redirect_to @articulo
      #redirect_to articulos_path
      #redirect_to articulo_path(@articulo)
      flash[:notice] = 'El articulo ha sido guardado exitosamente'
    else
      #redirect_to new_articulo_path
      render :new
      flash[:alert] = 'El articulo no fue guardado'
    end
  end

  def show
    @articulo = Articulo.find(params[:id])
  end

  def edit
    @articulo = Articulo.find(params[:id])
    @title = "Editar"
  end

  def update
    @articulo = Articulo.find(params[:id])
    @articulo.user = current_user

    if @articulo.update(articulo_params)
      redirect_to @articulo
      flash[:notice] = 'El articulo ha sido editado exitosamente'
    else
      render :edit
      flash[:alert] = 'El articulo no ha sido editado exitosamente'
    end
  end

  def destroy
    @articulo = Articulo.find(params[:id])
    @articulo.destroy

    redirect_to articulos_path
  end

  private
    def articulo_params
      params.require(:articulo).permit(:titular, :contenido, :user_id)
    end

end
