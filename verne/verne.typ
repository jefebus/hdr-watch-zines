#import "../src/lib.typ": watch_zine

#set document(author: "Jefebus", title: "RSWC Verne")
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
  image("verne_front.jpeg", width: 100%, height: 100%, fit: "cover")
  place(top + center, dy: 5mm, box(
    fill: rgb(0, 0, 0, 150),
    inset: 8pt,
    radius: 4pt,
    text(white, size: 20pt, stroke: 0.5pt + black)[
      *RSWC*\ 
      *Verne*
    ]
  ))
})
#pagebreak()

*ESPECIFICACIONES TÉCNICAS*
- Caja en acero quirúrgico 316L
- Diámetro: 42mm, espesor: 11mm
- Corona y tapa roscadas
- Resistencia: 100 metros
- Movimiento automático PT5000 con calendario
- Cristal de zafiro con AR interno
- Esfera con surcos longitudinales
- Logo RSWC en metal
- Agujas tridimensionales
- Superluminova BGW-9 azul
- Brazalete integrado
- Ancho de asas: 20mm

Disponible en Classic Nautilus Blue (azul) y Final Edition 
Green (verde).

#pagebreak()

*HOMENAJE AL NAUTILUS*

El RSWC Verne rinde tributo a dos leyendas: la obra maestra 
de Julio Verne "20.000 leguas de viaje submarino" y el icónico 
Patek Philippe Nautilus diseñado por Gérald Genta en 1976.

Jules Verne (1828-1905), el más famoso escritor de aventuras 
fantásticas del siglo XIX, imaginó en 1869 el submarino Nautilus 
del Capitán Nemo: un prodigio tecnológico propulsado por 
electricidad que alcanzaba 50 nudos y descendía hasta 11.000 metros.

El Verne captura la esencia del diseño de Genta con su caja 
octogonal, bisel integrado y brazalete característico, pero 
mantiene su propia identidad y carácter único.
#pagebreak()

*DISEÑO Y CONSTRUCCIÓN*

El Verne combina elegancia y deportividad con su caja de 42mm 
en acero pulido y satinado. La esfera presenta sutiles surcos 
longitudinales que evocan las líneas del casco del Nautilus.

El brazalete integrado se funde perfectamente con la caja, 
combinando acabados pulidos en los centros y satinados en 
laterales. El cierre desplegable incluye ajuste de seguridad 
y micro-ajuste.

Las agujas tridimensionales y los índices aplicados con 
Superluminova BGW-9 garantizan perfecta legibilidad. La caja 
permite usar correas estándar de 20mm para versatilidad.
#pagebreak()

*MOVIMIENTO PT5000*

El calibre PT5000 es un movimiento automático de alta calidad 
basado en el legendario ETA 2824-2. Con 28.800 alternaciones 
por hora y 26 rubíes, ofrece precisión y fiabilidad probadas.

Características:
- Cuerda automática bidireccional
- Calendario instantáneo a medianoche
- Reserva de marcha: 38 horas
- Regulado en 5 posiciones
- Sistema anti-choque KIF
- Espiral Nivarox

Robusto, preciso y fácilmente revisable por cualquier relojero, 
asegurando la longevidad del reloj.

#pagebreak()

*LA TRASERA Y EL PULPO GIGANTE*

La trasera del Verne presenta un grabado espectacular del ataque 
del calamar gigante al Nautilus, una de las escenas más icónicas 
de la novela y la película de 1954 con Kirk Douglas.

El diseño muestra al Nautilus enfrentándose al téutido gigante, 
representando la lucha del hombre contra las fuerzas de la 
naturaleza. El Capitán Nemo y el arponero Ned Land tuvieron que 
salir a cubierta para enfrentar al monstruo en una batalla épica.

Esta escena ha marcado a generaciones de lectores y espectadores, 
convirtiéndose en un símbolo del espíritu aventurero de la obra.

#pagebreak()

*EL PROYECTO NAUTILUS*

El RSWC Verne nació en septiembre de 2021 como parte del 
"Gran Proyecto Nautilus: 20.000 leguas de viaje submarino" 
de la comunidad Hablemos de Relojes.

El proyecto buscaba crear un homenaje accesible al legendario 
Patek Philippe Nautilus, manteniendo la esencia del diseño 
original pero con identidad propia.

Basado en un San Martin de excelente calidad, el Verne se 
convirtió junto al Airliner en uno de los mejores RSWC 
producidos hasta la fecha, gracias al diseño acertado, calidad 
superior y precio ajustado.

Como dijo Julio Verne: "Prestando atención a los locos se hacen 
los grandes descubrimientos."

#pagebreak()

#image("verne_back.jpeg", width: 100%, height: 50%, fit: "cover")

#place(top + left, dx: 5mm, dy: 45mm, box(width: 100% - 10mm, text(black, size: 7pt)[
La trasera presenta un grabado del calamar gigante atacando al 
Nautilus, una de las escenas más icónicas de la novela de Jules 
Verne y la película de 1954.
]))

#place(bottom + left, dx: 5mm, dy: -5mm, text(black, size: 7pt)[
_RSWC · Hablemos de Relojes_
])
