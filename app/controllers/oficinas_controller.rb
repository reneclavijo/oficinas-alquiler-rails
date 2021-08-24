class OficinasController < ApplicationController

  before_action :validar_sesion

  # GET
  def listar
    @lista_oficinas = Oficina.includes(:inquilinos).order(id: :asc)
  end

  # GET
  def crear
    @oficina_nueva = Oficina.new
  end

  # POST
  def guardar
    valores = params.require(:oficina).permit(:codigo, :precio)
    
    @oficina_nueva = Oficina.new(valores)
    @oficina_nueva.esta_alquilada = false

    if @oficina_nueva.save
      redirect_to action: "listar"
    else
      render :crear      
    end
  end
end
