#import "../../src/lib.typ": watch_zine

#set document(author: "HdR", title: "RSWC UME Tipo 1")
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
  image("ume_1_front.jpeg", width: 100%, height: 100%, fit: "cover")
  place(top + center, dy: 8mm, box(
    fill: rgb(0, 0, 0, 150),
    inset: 8pt,
    radius: 4pt,
    [
      #text(white, size: 20pt, stroke: 0.5pt + black)[*RSWC*]\
      #text(white, size: 16pt, stroke: 0.5pt + black)[*UME Tipo 1*]
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

*Movimiento:* Orient YN55A 
automático

*Resistencia agua:* 200m/20bar

*Corona:* Roscada

*Tapa:* Roscada

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

Está compuesta por efectivos 
de los tres ejércitos: tierra, 
mar y aire.
#pagebreak()

*MISIÓN Y CAPACIDADES*

Cuenta con personal altamente 
capacitado en áreas como:

- Rescate y salvamento
- Atención médica de emergencia
- Desactivación de explosivos
- Transporte y logística
- Lucha contra incendios

Su despliegue puede llevarse 
a cabo en cualquier punto del 
territorio nacional y también 
en misiones internacionales 
de ayuda humanitaria.

Especialmente recordadas son 
sus actuaciones en la borrasca 
Filomena, la operación 
volcánica de La Palma en 2022 
y el terremoto de Turquía.
#pagebreak()

*DISEÑO Y FILOSOFÍA*

Cuando nos planteamos cómo 
debería ser un reloj con 
especificaciones militares 
para la UME, establecimos 
criterios muy claros:

- Durabilidad extrema
- Resistencia al agua
- Legibilidad en cualquier 
  condición de luz
- Diseño discreto y táctico
- Tamaño contenido para 
  máxima comodidad
- Movimiento fiable y preciso

El resultado es un reloj 
militar clásico donde todo 
está pensado para cumplir con 
dos máximas: ser duro y 
legible, sin adornos que 
distraigan.
#pagebreak()

*REFERENCIAS HISTÓRICAS*

Este diseño se inspira en 
los grandes relojes militares 
de la Segunda Guerra Mundial 
y de las décadas de los 60 
y 70, que demostraron su 
valía tras múltiples años 
de servicio.

Hemos llevado estos 
magníficos militares de época 
a nuestros tiempos para que 
estén a la altura de una 
unidad moderna y 
especializada como es la UME.

La caja arenada, el bisel 
cerámico y las agujas tipo 
espada combinan tradición 
con tecnología actual.
#pagebreak()


*INSTRUCCIONES DE USO*

*Carga del movimiento:*
El calibre Orient YN55A es 
automático. Se carga con el 
movimiento de la muñeca. 
También puede cargarse 
manualmente girando la corona 
en posición normal.

*Ajuste de hora:*
Desenroscar la corona, tirar 
a segunda posición y ajustar 
la hora. Volver a enroscar.

*Mantenimiento:*
Limpiar con paño húmedo. 
No exponer a golpes fuertes.
Revisión cada 3-5 años.

*Resistencia al agua:*
200m/20bar. Apta para buceo 
recreativo. Enroscar bien 
la corona antes de sumergir.
#pagebreak()

#block({
  image("ume_1_back.jpeg", width: 100%, height: 50%, fit: "cover")
})

#place(top + left, dx: 5mm, dy: 45mm, box(width: 100% - 10mm, text(black, size: 7pt)[
El RSWC UME Tipo 1 es un homenaje de HdR a la Unidad Militar de Emergencias. Un reloj militar diseñado para soportar las condiciones más extremas, con la robustez y legibilidad que exige el servicio de una unidad de élite. 
]))

#place(bottom + left, dx: 5mm, dy: -5mm, text(black, size: 7pt)[
_RSWC · Hablemos de Relojes_
])
