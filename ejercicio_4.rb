# 4) Realizar un algoritmo para determinar cuánto ahorrará una persona en un año, 
# si al final de cada mes deposita cantidades variables de dinero; 
# además, se quiere saber cuánto lleva ahorrado cada mes.

abonos = [
    {mes: "enero", sueldo: 3000},
    {mes: "febrero", sueldo: 43000},
    {mes: "marzo", sueldo: 5000},
    {mes: "abril", sueldo: 3000},
    {mes: "mayo", sueldo: 6000},
    {mes: "junio", sueldo: 2000},
    {mes: "julio", sueldo: 1000},
    {mes: "agosto", sueldo: 5000},
    {mes: "septiembre", sueldo: 3000},
    {mes: "octubre", sueldo: 8000},
    {mes: "noviembre", sueldo: 1000},
    {mes: "diciembre", sueldo: 10000}
]

def ahorro_total(abonos)
    acum = 0 
    abonos.each do |abono|
        acum = acum + abono[:sueldo]
    end
    acum
end

def obtener_ahorros_al_dia(abonos)
    sum = 0
    (0...abonos.size).each do |i|
        if i == 0 
            sum = abonos[0][:sueldo]
        else
            sum = sum + abonos[i][:sueldo] 
        end
        abonos[i][:abono] = sum
    end
    abonos
end

abonos = obtener_ahorros_al_dia(abonos)
pp abonos
pp ahorro_total(abonos)
pp abonos.last[:abono]