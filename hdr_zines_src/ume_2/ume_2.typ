#import "../../src/lib.typ": watch_zine

#set document(author: "HdR", title: "RSWC UME Tipo 2")
#set text(font: "Carlito", size: 7pt, lang: "es")
#set page("a4")

#show heading.where(level: 1): hd => {
  pad(top: 2em, text(10em, align(center, hd.body)))
}

#show: watch_zine.with(
  digital: json(bytes(sys.inputs.at("digital", default: "false"))),
  draw-border: true
)

// cover
#block({
  image("ume_2_front.jpeg", width: 100%, height: 100%, fit: "cover")
  place(top + center, dy: 8mm, box(
    fill: rgb(0, 0, 0, 150),
    inset: 8pt,
    radius: 4pt,
    [
      #text(white, size: 20pt, stroke: 0.5pt + black)[*RSWC*]\
      #text(white, size: 16pt, stroke: 0.5pt + black)[*UME Tipo 2*]
    ]
  ))
})
#pagebreak()

*ESPECIFICACIONES TÉCNICAS*

*Caja:* Acero inoxidable 
arenada, molde propio Astar

*Diámetro:* 40 mm (sin corona)
43 mm (con corona)

*Largo:* 49,8 mm

*Grosor:* 14,4 mm

*Cristal:* Zafiro con triple 
antireflejo interior

*Bisel:* Cerámico

*Movimiento:* Seiko NH34 GMT 
automático

*Función GMT:* Segundo uso 
horario independiente

*Resistencia agua:* 200m/20bar

*Corona:* Roscada

*Tapa:* Roscada con escudo 
y lema de la UME

*Correa:* NATO 20mm

*Luminiscencia:* Superluminova

#pagebreak()

*LA UNIDAD MILITAR DE EMERGENCIAS*

La UME es una fuerza militar 
con alto nivel de 
especialización creada para 
intervenir en situaciones de 
emergencia y catástrofes 
tanto naturales como 
provocadas por el ser humano.

Establecida en 2005, su 
principal función es 
proporcionar una respuesta 
rápida y eficiente ante 
situaciones de crisis que 
superen la capacidad de las 
autoridades civiles.

Su despliegue puede llevarse 
a cabo en cualquier punto del 
territorio nacional y también 
en misiones internacionales.
#pagebreak()

*MISIONES INTERNACIONALES*

El UME Tipo 2 GMT está 
especialmente diseñado para 
operaciones en el extranjero.

Su función GMT permite llevar 
simultáneamente:
- Hora local de la misión
- Hora de referencia (España)

Esto es fundamental para:
- Coordinación internacional
- Comunicaciones con base
- Sincronización de equipos
- Operaciones multilaterales

La UME ha participado en 
misiones como el terremoto 
de Turquía (2023), donde la 
gestión de múltiples husos 
horarios fue esencial.
#pagebreak()

*DISEÑO Y LEGIBILIDAD*

El Tipo 2 sacrifica 
ligeramente la legibilidad 
extrema del Tipo 1 a cambio 
de la funcionalidad GMT.

Características del diseño:
- Esfera más compleja
- Aguja GMT adicional
- Escala 24 horas
- Diseño equilibrado
- Máxima información útil

A pesar de la complejidad 
adicional, mantiene los 
principios tácticos:
- Durabilidad extrema
- Resistencia al agua
- Iluminación efectiva
- Diseño discreto
- Movimiento fiable
#pagebreak()

*CALIBRE SEIKO NH34*

El movimiento Seiko NH34 GMT 
es la evolución del 
legendario NH35.

Añade la funcionalidad GMT 
manteniendo la robustez y 
fiabilidad que caracteriza 
a los calibres Seiko.

La aguja GMT independiente 
permite ajustar el segundo 
huso horario sin detener 
el reloj ni afectar la hora 
principal.

Este calibre ha demostrado 
su fiabilidad en condiciones 
exigentes, siendo la elección 
perfecta para un reloj de 
especificaciones militares.
#pagebreak()

*INSTRUCCIONES DE USO*

*Carga del movimiento:*
El calibre Seiko NH34 es 
automático. Se carga con el 
movimiento de la muñeca. 
También puede cargarse 
manualmente girando la corona 
en posición normal.

*Ajuste de hora local:*
Desenroscar la corona, tirar 
a segunda posición y ajustar 
la hora. Volver a enroscar.

*Ajuste de GMT:*
Primera posición de corona 
permite ajustar la aguja GMT 
independientemente.

*Mantenimiento:*
Limpiar con paño húmedo. 
Revisión cada 3-5 años.

*Resistencia al agua:*
200m/20bar. Enroscar bien 
la corona antes de sumergir.
#pagebreak()

#block({
  image("ume_2_back.jpeg", width: 100%, height: 50%, fit: "cover")
})

#place(top + left, dx: 5mm, dy: 45mm, box(width: 100% - 10mm, text(black, size: 7pt)[
El RSWC UME Tipo 2 es la versión GMT del homenaje de HdR a la Unidad Militar de Emergencias. Diseñado específicamente para misiones internacionales, incorpora un segundo uso horario.
]))

#place(bottom + left, dx: 5mm, dy: -5mm, text(black, size: 7pt)[
_RSWC · Hablemos de Relojes_
])
