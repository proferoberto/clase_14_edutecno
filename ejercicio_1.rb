# 1) crear un programa que almacene los datos del carro de compras, 
# item que se desea comprar, cantidad, y valor por item. imprimir en consola el precio total. 
# si son mas de 5 items aplicar un 5% de descuento, si son mas de 10 un aplicar un 10% de
#  descuento al valor total de la compra. Debe almacenar ademas el ahorro de cada producto 
#  y el costo final del producto con el descuento realizado. 

# Planteamiento
# 1) Neceistamos solicitar los datos del producto
# 1.1) nombre
# 1.2) precio
# 1.3) total_unidades_del_producto
# operaciones
# 2)sumatoria de elemento
# 3)Comparacion 
# 3.1) si son mas de 5 elementos -> 5%
# 3.2) si son mas 10 elementos -> 10%
# 3.3) identificar que porcentaje me asignan a mi por la compra que hice
# 4) calculo de porcentajes es de la compra total ahorro y cuanto va apagar al final
# 5) Recorrido
# 5.1) Ahorro = valor_real * porcentaje
# 5.2) valor_a_pagar = valor_real - ahorro
# 6) Mostrar la informacion

# Diseno inicial
productos = [
    {nombre: "detergente", precio: 30000, unidades_compradas: 5},
    {nombre: "Paquete de huevos", precio: 1000, unidades_compradas: 4},
    {nombre: "paquete de fideos", precio: 500, unidades_compradas: 10}
]


# productos = []
# loop do
#     puts "Digita la informacion del producto"
#     puts "configuracion de ingreso nombre,precio,unidades_compradas"
#     data = gets.chomp.split(',')
#     producto = {nombre: data[0], precio: data[1].to_f, unidades_compradas: data[2].to_i}
#     productos.push(producto)
#     puts "Desea continuar ingresando productos"
#     opt = gets.chomp
#     unless opt == 's'
#         break
#     end
# end

suma_de_elementos = productos.sum{|producto| producto[:unidades_compradas]}

porcentaje = 0
if suma_de_elementos > 5 and suma_de_elementos <= 10
    porcentaje = 5/100.to_f
elsif suma_de_elementos > 10
    porcentaje = 10/100.to_f
end
total_factura = 0
total_factura_sin_ahorro = 0
productos.each do |producto|
    valor_real = producto[:precio] * producto[:unidades_compradas]
    ahorro = valor_real * porcentaje
    valor_a_pagar = valor_real - ahorro
    producto.merge!({valor_real: valor_real, ahorro: ahorro, valor_a_pagar: valor_a_pagar})
    total_factura = total_factura + valor_a_pagar
    total_factura_sin_ahorro = total_factura_sin_ahorro + valor_real
end

productos.each do |producto|
    puts "#{producto[:nombre]} - #{producto[:precio]} * #{producto[:unidades_compradas]} = #{producto[:valor_real]} - #{producto[:ahorro]} = #{producto[:valor_real]}"
end
puts "Total sin descuento #{total_factura_sin_ahorro}"
puts "total_factura a pagar: #{total_factura}"
puts "Total de elementos comprados: #{suma_de_elementos}"

