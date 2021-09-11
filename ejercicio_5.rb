# 5) Realizar un programa que lea la informacion de un curso de una universidad(Nombre y codigo) 
# el programa debe solicitar cuantos examenes o notas se tomaran en el curso, se debe solicitar 
# el nombre de la nota y el procentaje. Ademas se debe solicitar  la informacion de cuantos 
# estudiantes tiene y preguntar la nota en cada una de las secciones de notas establecidas en el curso. 
# Se debe decir al final un resumen que diga que estudiantes aprobaron el curso y que estudiantes 
# reprobaron el curso. 

# Pasos
# 1) Pedir informacion de curso
# 1.1) Nombre
# 1.2) Codigo
# 2) Pedir cuantos examenes se tomaran en el curso
# 2.1) Nombre de la nota
# 2.2) el procentaje de cada uno de esos examenes
# 3) Cuantos estudiantes tiene
# 3.1) Preguntar la nota para cada una de las secciones por estudiante
# 4) Buscar y comparar
# 4.1) Estuadiantes con nota final > 3 aprobaron
# 4.2) Estudiantes con nota final < 3 reprobaron

#Disenar estructura de datos
curso = {nombre: "Fundamentos de programacion 1", 
        codigo: 1234544,
        notas: [
            {nombre: "Parcial 1", porcentaje: 0.3}, #iteracion 0
            {nombre: "Parcial 2", porcentaje: 0.3}, #iteracion 1
            {nombre: "Trabajo en clase", porcentaje: 0.2}, #iteracion 2
            {nombre: "Quices", porcentaje: 0.2} #iteracion3
        ],
        numero_de_estudiantes: 10,
        estudiantes: [
            {nombre: "roberto", apellido: "daza", notas: [1, 2, 3, 3.5]}, #iteracion 0
            {nombre: "raul", apellido: "bisquett", notas: [4, 5, 3, 2]} #iteracion 1
        ]
}

curso[:estudiantes].each do |estudiante|
    porcentajes = []
    ponderado = 0
    curso[:notas].each_with_index do |estructura_nota, index|
        ponderado_parcial = estudiante[:notas][index] * estructura_nota[:porcentaje]
        porcentajes.push(ponderado_parcial)
        ponderado = ponderado + ponderado_parcial 
    end
    estudiante[:porcentajes] = porcentajes
    estudiante[:ponderado] = ponderado
end

curso[:estudiantes].each do |estudiante|
    if estudiante[:ponderado] >= 3
        puts "El estudiante #{estudiante[:nombre]} #{estudiante[:apellido]} aprobo"
    else
        puts "El estudiante #{estudiante[:nombre]} #{estudiante[:apellido]} reprobo"
    end
end



