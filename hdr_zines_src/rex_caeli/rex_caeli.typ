#import "../../src/lib.typ": watch_zine

#set document(author: "HdR", title: "RSWC Rex Caeli")
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
  image("rex_caeli_front.jpeg", width: 100%, height: 100%, fit: "cover")
  place(top + center, dy: 3mm, box(
    fill: rgb(0, 0, 0, 150),
    inset: 8pt,
    radius: 4pt,
    text(white, stroke: 0.5pt + black)[
      #text(size: 12pt)[*RSWC*]\ 
      #text(size: 10pt)[*Rex Caeli*]
    ]
  ))
})#pagebreak()

// Page 2 - Technical Specifications
*ESPECIFICACIONES TÉCNICAS*

- Movimiento: NH34
- Acero inoxidable 316L
- Cristal de zafiro, AR
- Dial negro y amarillo 810C
- Bisel cerámica 24 clics
- Fechador fondo negro a las 6
- Manecilla GMT roja
- Lumen BGW-9n y SLN-C3
- Corona roscada logo RSWC
- Brazalete acero 7 eslabones
- Resistente al agua: 10Bar
- Diámetro: 39,5 mm
- Distancia asas: 46,5 mm
- Grosor: 12,5 mm
- Ancho banda: 20 mm
- Edición limitada: 50 uds.

#pagebreak()

// Page 3 - History
*LA CONQUISTA DEL CIELO*

Presentado el 5 de septiembre
de 2023, coincidiendo con el
114 aniversario del primer
vuelo motorizado en España
por Juan Olivert Serra.

El deseo de volar ha acompañado
al ser humano desde siempre.
Desde la Paloma de Arquitas
en 400 a.C., pasando por
Abbás Ibn Firnás en Córdoba
(852), hasta Leonardo da Vinci
en el siglo XV.

"Una vez hayas probado el vuelo,
siempre caminarás mirando al
cielo" - Leonardo da Vinci

#pagebreak()

// Page 4 - The Myth of Icarus
*EL MITO DE ÍCARO*

Ícaro, hijo del arquitecto
Dédalo, representa el anhelo
humano de volar y la valentía
de desafiar límites.

Dédalo construyó alas con
plumas unidas con cera para
escapar de Creta. Advirtió a
su hijo: no vueles demasiado
alto ni demasiado bajo.

Ícaro, embriagado por la
libertad del vuelo, ascendió
hacia el sol. La cera se
derritió y cayó al mar.

Símbolo de rebeldía, ambición
y curiosidad innata del ser
humano por alcanzar lo imposible.

#pagebreak()

// Page 5 - Design Philosophy
*FILOSOFÍA DEL DISEÑO*

El Rex Caeli es el tercer
miembro de la saga Rex,
tras Rex Maris y Rex Terrae.

Reloj worldtimer GMT con
bisel bidireccional de
cerámica para temporizador
mundial de 24 clics.

El dial combina negro con
amarillo Pantone 810C, evocando
el calor del sol de Ícaro.

Agujas negras con GMT y
segundera en rojo, recordando
la advertencia de Dédalo.

Lumen espectacular con BGW-9n
azul y SLN-C3 verde.

#pagebreak()

// Page 6 - Community and Credits
*DISEÑADO POR LA COMUNIDAD*

"Un reloj diseñado con orgullo
por los integrantes de esta
casa" - Trasera del reloj

Proyecto coordinado por RubenG
con la colaboración de:
Girolamo, Cormac, Gasparacha,
bcdf, submariner, 4Hz,
El_Monitor, Tortuga_Shelly
y todos los foreros de HdR.

Fabricado por San Martín
en colaboración con Astar.

Tras el cielo, el hombre puso
sus ojos en las estrellas...

#pagebreak()

// Page 7 - Instructions
*INSTRUCCIONES DE USO*

El bisel GMT de 24 clics
permite calcular la hora en
múltiples zonas horarias.

Corona de tres posiciones:
- Posición 0: Corona roscada
- Posición 1: Ajuste de fecha
- Posición 2: Ajuste de hora

La manecilla GMT da una vuelta
completa cada 24 horas,
sincronizada con el bisel.

Para calcular hora en otra
zona: gira el bisel hasta
alinear tu zona horaria con
la manecilla GMT.

Resistente al agua hasta
100 metros. No usar corona
bajo el agua.

#pagebreak()

// Page 8 - Back Cover
#block({
  image("rex_caeli_back.jpeg", width: 100%, height: 50%, fit: "cover")
})

#place(top + left, dx: 5mm, dy: 45mm, box(width: 100% - 10mm, text(black, size: 7pt)[
El fondo de caja roscado presenta el grabado "Diseñado con orgullo por los integrantes de esta casa", junto al logo RSWC y la numeración de serie limitada a 50 unidades. La corona firma con elegancia el sello de nuestra marca.
]))

#place(bottom + left, dx: 5mm, dy: -5mm, text(black, size: 7pt)[
_RSWC · Hablemos de Relojes_
])
