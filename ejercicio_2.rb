class Cuenta
    attr_accessor :titular, :cantidad

    def initialize(titular, cantidad)
        @titular = titular
        @cantidad = cantidad
    end

    def abonar(monto)
        if monto > 0
            @cantidad = @cantidad + monto        
        end
        @cantidad
    end

    def retirar(monto)
        valor_actual = @cantidad - monto
        if valor_actual < 0
            @cantidad = 0
        else
            @cantidad = valor_actual
        end 
        @cantidad
    end
end
puts "Ingrese el nombre de el titular"
nombre = gets.chomp
puts "Ingrese el valor de apertura de la cuenta"
valor = gets.chomp.to_f
cuenta = Cuenta.new(nombre, valor)

loop do
   puts "1 Deseas abonar"
   puts "2 Deseas retirar"
   puts "3 salir"
   opt = gets.chomp
   case opt
   when '1'
    puts "Cual es el monto ha abonar"
    monto = gets.chomp.to_f
    cuenta.abonar(monto)
    puts "Este es el valor de  mi cuenta actuamente #{cuenta.cantidad}"
   when '2'
    puts "Cual es el monto ha retirar"
    monto = gets.chomp.to_f
    cuenta.retirar(monto)
    puts "Este es el valor de  mi cuenta actuamente #{cuenta.cantidad}"
   when '3'
    break
   end
end





