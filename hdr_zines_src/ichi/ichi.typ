#import "../../src/lib.typ": watch_zine

#set document(author: "HdR", title: "RSWF Ichi – Rising Sun Watch Forum")
#set text(font: "Carlito", size: 7pt, lang: "es")
#set page("a4")

#show heading.where(level: 1): hd => {
  pad(top: 2em, text(10em, align(center, hd.body)))
}

#show: watch_zine.with(
  digital: json(bytes(sys.inputs.at("digital", default: "false"))),
  draw-border: true // draw border boxes in printing mode
)

// cover
#block({
  image("ichi_front.jpeg", width: 100%, height: 100%, fit: "cover")
  place(top + center, dy: 3mm, box(
    fill: rgb(0, 0, 0, 150),
    inset: 8pt,
    radius: 4pt,
    text(white, stroke: 0.5pt + black)[
      #text(size: 12pt)[*RSWF*]\ 
      #text(size: 10pt)[*Ichi*]
    ]
  ))
})#pagebreak()

*ESPECIFICACIONES TÉCNICAS*
- Caja basada en Orient Mako modificada
- Movimiento automático Orient (F6722 o similar)
- Sin cuerda manual
- Cristal mineral
- Esfera azul con logotipo personalizado RSWF
- Trasera con grabado conmemorativo
- Correa Hirsch azul de cuero
- Resistencia al agua: 200 metros (especificación Orient Mako)

#pagebreak()

*DESCRIPCIÓN DEL RELOJ*

El RSWF Ichi nació como símbolo de cohesión para los 
miembros del foro hermano japonés Rising Sun Watch Forum.

Partiendo de un Orient Mako, se personalizó con logotipo 
en la esfera y grabado conmemorativo en la trasera. 

Su diseño azul y su carácter limitado lo convirtieron 
en una pieza querida entre los foreros de ambas 
comunidades.

Este fue uno de los primeros proyectos colaborativos 
del foro, impulsado por la voluntad de forjar lazos 
entre comunidades relojeras internacionales.

#pagebreak()

*EL ORIENT MAKO*

La base del proyecto es el Orient Mako, un reloj diver 
automático japonés reconocido por su excelente calidad 
y fiabilidad.

El Mako monta el calibre F6922 de Orient, un movimiento 
robusto de 22 joyas con cuerda automática unidireccional.

Su caja de acero inoxidable y resistencia de 200 metros 
lo convierten en un reloj versátil para uso diario y 
actividades acuáticas.

La modificación consistió en personalizar la esfera con 
el logotipo RSWF y grabar la trasera, manteniendo todas 
las características técnicas originales.

#pagebreak()

*LA HISTORIA DEL PROYECTO*

Se logró con éxito gracias al apoyo técnico de Pedro 
Izquierdo, relojero español con taller propio, quien 
adaptó la base del reloj a las necesidades del proyecto.

Pedro Izquierdo ofreció la viabilidad técnica tras la 
imposibilidad de personalizar modelos Seiko. Su apoyo 
fue clave para que el proyecto se realizara sin 
comprometer calidad ni plazos.

Aunque modesto en comparación con proyectos posteriores, 
el RSWF Ichi marcó el inicio de una larga tradición de 
proyectos colaborativos en HdR.

#pagebreak()

*COMUNIDAD INTERNACIONAL*

El Rising Sun Watch Forum es una comunidad japonesa de 
aficionados a la relojería que comparte la pasión por 
los relojes mecánicos y la microrelojería.

Este proyecto representa el primer puente formal entre 
ambas comunidades, demostrando que la afición relojera 
trasciende fronteras culturales y lingüísticas.

La palabra "Ichi" (一) significa "uno" en japonés, 
simbolizando tanto el primer proyecto como la unión 
de dos comunidades en una sola pasión.

#pagebreak()

*INSTRUCCIONES DE USO*

El movimiento automático Orient no tiene cuerda manual. 
Para un uso óptimo, llevar el reloj al menos 8 horas 
al día.

Si el reloj está detenido, agitar suavemente en 
movimientos circulares durante 30 segundos para 
activar el rotor automático.

*Importante:* No cambiar la fecha entre las 21:00 y 
03:00 para evitar dañar el mecanismo de calendario.

Para mantener la precisión óptima, se recomienda 
revisión cada 3-5 años por un relojero cualificado.

#pagebreak()

#image("ichi_side.jpeg", width: 100%, height: 50%, fit: "cover")

#place(top + left, dx: 5mm, dy: 45mm, box(width: 100% - 10mm, text(black, size: 7pt)[
La trasera presenta el grabado conmemorativo RSWF. El primer 
proyecto colaborativo entre Hablemos de Relojes y Rising Sun 
Watch Forum, uniendo dos comunidades en una pasión común.
]))

#place(bottom + left, dx: 5mm, dy: -5mm, text(black, size: 7pt)[
_RSWF · Hablemos de Relojes_
])
