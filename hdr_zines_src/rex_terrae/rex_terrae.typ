#import "../../src/lib.typ": watch_zine

#set document(author: "HdR", title: "RSWC Rex Terrae")
#set text(font: "Carlito", size: 7pt, lang: "es")
#set page("a4")

#show heading.where(level: 1): hd => {
  pad(top: 2em, text(10em, align(center, hd.body)))
}

#show: watch_zine.with(
  digital: json(bytes(sys.inputs.at("digital", default: "false"))),
  draw-border: true
)

// Page 1 - Cover
#block({
  image("rex_terrae_front.jpeg", width: 100%, height: 100%, fit: "cover")
  place(top + center, dy: 5mm, box(
    fill: rgb(0, 0, 0, 150),
    inset: 8pt,
    radius: 4pt,
    [
      #text(white, size: 20pt, stroke: 0.5pt + black)[*RSWC*]\
      #text(white, size: 16pt, stroke: 0.5pt + black)[*REX TERRAE*]\
      #text(white, size: 12pt, stroke: 0.5pt + black)[_North Pole · South Pole_]
    ]
  ))
})
#pagebreak()

// Page 2 - Specifications
*ESPECIFICACIONES TÉCNICAS*

*Caja:* Acero 316L, 39 mm × 12,5 mm
*Lug to lug:* 48,5 mm
*Paso de correa:* 20 mm
*Cristal:* Zafiro con AR interno
*Movimiento:* Hangzhou 6460 GMT
*Impermeabilidad:* 200 metros
*Brazalete:* Acero 316L

*NORTH POLE*
Esfera negra, lumen verde
Aguja minutera custom alargada

*SOUTH POLE*
Esfera blanca, lumen azul
Aguja minutera custom alargada

#pagebreak()

// Page 3 - History
*EL RELOJ DEL EXPLORADOR*

En 1953, el sherpa Tenzing Norgay llevaba un prototipo Rolex cuando realizó la primera ascensión exitosa del Everest. Así nació la leyenda del Explorer.

En 1971, Rolex escuchó a los espeleólogos que necesitaban distinguir día y noche. Nació el Explorer II con bisel de 24 horas y aguja GMT.

En 1985 apareció la versión con esfera blanca, bautizada como "Polar" por su uso en misiones árticas.

El Rex Terrae rinde homenaje a aquellos pioneros con tecnología moderna en dos versiones inspiradas en los polos de la Tierra.
#pagebreak()

// Page 4 - North Pole
*NORTH POLE · URSUS MARITIMUS*

El oso polar (Ursus maritimus) es uno de los carnívoros terrestres más grandes de la Tierra. Superdepredador del Ártico, vive en el medio polar y zonas heladas del hemisferio norte.

Extremadamente peligroso para el hombre. Verdaderas moles de 800 kilos que se desplazan a velocidades de más de 40 km/h.

Durante siglos, el terror de los exploradores árticos y motivo de fascinación de los científicos.

La versión North Pole honra este animal con esfera negra y lumen verde.
#pagebreak()

// Page 5 - South Pole
*SOUTH POLE · APTENODYTES FORSTERI*

El pingüino emperador (Aptenodytes forsteri) es la especie de pingüino de mayor tamaño y peso. Endémico de la Antártida, supera los 120 cm de altura.

La hembra pone el huevo en los más crudos días invernales mientras el macho viaja cientos de kilómetros por el hielo bajo condiciones extremas.

Un verdadero héroe del mundo animal. Su vida es poca broma a pesar de su cómica apariencia.

La versión South Pole celebra este habitante irreductible con esfera blanca y lumen azul.
#pagebreak()

// Page 6 - Design
*DISEÑO Y COMUNIDAD*

El Rex Terrae nace en el seno de la familia HdR ante la necesidad de crear un reloj que haga homenaje al mundo del explorador.

Un reloj de batalla. Duro. De tamaño contenido y de uso fácil con toda la tecnología moderna de la que no disponían aquellos Rolex pioneros.

Diseñado al gusto de la comunidad HdR, se presenta en dos versiones para representar los dos polos de la Tierra.

Proyecto conjunto con Astar. Fabricado en China con control de calidad HdR.
#pagebreak()

// Page 7 - Instructions
*INSTRUCCIONES DE USO*

*Posiciones de la corona*

Pos 0: Presionada - Uso normal y cuerda\ 
Pos 1 Medio - Ajuste fecha y GMT\ 
Pos 2 Extendida - Ajuste hora

*Ajuste de la hora*

1. Tire corona a posición 2
2. Gire para ajustar hora y minutos
3. Presione corona a posición 0

*Ajuste de la fecha*

1. Tire corona a posición 1
2. Gire hacia la derecha (horario)\ 
⚠️ NO ajustar entre 8 PM y 3 AM

*Ajuste hora GMT (24h)*

1. Tire corona a posición 1
2. Gire hacia la izquierda (antihorario)
#pagebreak()

// Page 8 - Back Cover
#block({
  image("rex_terrae_back.jpeg", width: 100%, height: 50%, fit: "cover")
})

#place(top + left, dx: 5mm, dy: 45mm, box(width: 100% - 10mm, text(black, size: 7pt)[
*REX TERRAE* — North Pole en negro con lumen verde rinde homenaje al oso polar, superdepredador del Ártico. South Pole en blanco con lumen azul celebra al pingüino emperador, héroe de la Antártida. 
]))

#place(bottom + left, dx: 5mm, dy: -5mm, text(black, size: 7pt)[
_RSWC · Hablemos de Relojes_
])
