class OficinasController < ApplicationController
  # GET
  def listar
    @lista_oficinas = Oficina.all.order(id: :asc)

  end

  # GET
  def crear
    @oficina_nueva = Oficina.new
  end

  # POST
  def guardar
    valores = params.require(:oficina).permit(:codigo, :precio, :esta_alquilada)
    
    @oficina_nueva = Oficina.new(valores)

    if @oficina_nueva.save
      redirect_to action: "listar"
    else
      render :crear      
    end
  end

end
