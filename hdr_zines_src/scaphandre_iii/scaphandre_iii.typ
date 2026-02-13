#import "../../src/lib.typ": watch_zine

#set document(author: "HdR", title: "RSWC Scaphandre III")
#set text(font: "Carlito", size: 7pt, lang: "es")
#set page("a4")

#show heading.where(level: 1): hd => {
  pad(top: 2em, text(10em, align(center, hd.body)))
}

#show: watch_zine.with(
  digital: json(bytes(sys.inputs.at("digital", default: "false"))),
  draw-border: true
)

// Portada
#block({
  image("scaphandre_iii_front.jpeg", width: 100%, height: 100%, fit: "cover")
  place(top + center, dy: 3mm, box(
    fill: rgb(0, 0, 0, 150),
    inset: 8pt,
    radius: 4pt,
    [
      #text(white, size: 12pt, stroke: 0.5pt + black)[*RSWC*]\ 
      #text(white, size: 10pt, stroke: 0.5pt + black)[*Scaphandre III*]
    ]
  ))
})
#pagebreak()

// Especificaciones técnicas
*ESPECIFICACIONES TÉCNICAS*
Caja: acero 316L, 44mm diámetro
Grosor: 13,85mm
Lug to lug: 50mm
Ancho correa: 22mm
Bisel cerámico unidireccional
Cristal zafiro AR
Sumergible 1200m
Movimiento: Seiko NH35 automático
Brazalete Superengineer + 2 correas goma
Lumen BGW9
Corona roscada
Fondo atornillado
Precio: 205€
#pagebreak()

// Historia
*LA SAGA SCAPHANDRE Y COUSTEAU*
La trilogía Scaphandre rinde homenaje
a la exploración submarina y al legado
de Cousteau. Inspirada en los relojes
de buceo profesionales y en la pasión
por el océano, cada modelo representa
un capítulo en la aventura de descubrir
las profundidades. El Scaphandre III
cierra la saga con un diseño robusto,
hermeticidad extrema y detalles que
recuerdan a los grandes hitos del buceo.
#pagebreak()

// Diseño y detalles
*DISEÑO Y DETALLES*
Caja tipo Turtle de 44mm, bisel cerámico
azul, cristal zafiro, lumen BGW9 y
brazalete Superengineer. Incluye dos
correas de goma (azul y negra). Edición
limitada, fondo grabado y numerado.
Inspiración en el Steeldive SD1985.
#pagebreak()

// Características destacadas
*CARACTERÍSTICAS DESTACADAS*
Hermeticidad 1200m, válvula de helio,
corona y fondo roscados, bisel cerámico
luminoso, lumen BGW9, movimiento NH35,
acero 316L, brazalete sólido, edición
numerada. Ideal para buceo extremo.
#pagebreak()

// Créditos y agradecimientos
*CRÉDITOS Y AGRADECIMIENTOS*
Proyecto HdR y RSWC. Inspiración y
apoyo de la comunidad. Diseño basado
en Steeldive SD1985. Gracias a todos
los foreros y colaboradores.
#pagebreak()

// Instrucciones de uso
*INSTRUCCIONES DE USO*
Ajustar la hora desenroscando la corona.
Evitar manipular bajo el agua. Lavar con
agua dulce tras inmersión. Revisar juntas
cada 2 años. No abrir la caja salvo por
profesional. Cargar manualmente si se
detiene. Mantener alejado de imanes.
#pagebreak()

// Contraportada
#block({
  image("scaphandre_iii_back.jpeg", width: 100%, height: 50%, fit: "cover")
})

#place(top + left, dx: 5mm, dy: 45mm, box(width: 100% - 10mm, text(black, size: 7pt)[
Fondo grabado y numerado. Inspiración
Cousteau y buceo profesional extremo.
]))

#place(bottom + left, dx: 5mm, dy: -5mm, text(black, size: 7pt)[
_RSWC · Hablemos de Relojes_
])