class Oficina < ApplicationRecord
    has_many :inquilinos
    
    before_validation(:cambiar_a_mayusculas)
    before_save(:antes_de_guardar)

    validates(:codigo, uniqueness: true)
    validates(:codigo, presence: true)

    validates :precio, presence: true

    private

    def cambiar_a_mayusculas
        puts "==========================="
        self.codigo.upcase!
        puts self.inspect
        puts "==========================="
    end

    def antes_de_guardar
        puts "**************************"
        puts self.codigo
        puts "**************************"
    end

end
