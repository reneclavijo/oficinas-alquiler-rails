class InquilinosController < ApplicationController
    
    # GET - Devolver el formulario para crear un inquilino
    def crear
        @inquilino = Inquilino.new
        @oficinas = Oficina.select(:id, :codigo).order(codigo: :asc)
    end

    # POST - Recibir los datos de un inquilino y guardar en la BD
    def guardar
        valores = params.require(:inquilino).permit(:nombre, :apellido, :telefono, :rut, :oficina_id)
        puts "=================================="
        #Inquilino.new({nombre: "hola", apellido: "", telefono: "", rut: "", oficina_id: 1})
        puts valores.inspect
        puts "=================================="       

        @inquilino = Inquilino.new(valores)

        if @inquilino.save
            redirect_to "/oficinas/listar"
        else
            @oficinas = Oficina.select(:id, :codigo).order(codigo: :asc)
            render :crear
        end
    end
end