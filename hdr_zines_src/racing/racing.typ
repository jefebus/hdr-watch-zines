#import "../../src/lib.typ": watch_zine

#set document(author: "HdR", title: "RSWC Racing & Space")
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
  image("racing_front.jpeg", width: 100%, height: 100%, fit: "cover")
  place(top + center, dy: 5mm, box(
    fill: rgb(0, 0, 0, 150),
    inset: 8pt,
    radius: 4pt,
    [
      #text(white, size: 20pt, stroke: 0.5pt + black)[*RSWC*]\
      #text(white, size: 10pt, stroke: 0.5pt + black)[*Karussell & Moeris Lacus*]
    ]
  ))
})
#pagebreak()

// Page 2 - Especificaciones
*ESPECIFICACIONES TÉCNICAS*

*Caja*: Acero 316L, 42.5×47mm
10ATM. Corona roscada RSWC.
Trasera con grabado en relieve.

*Movimiento*: Seiko Epson VS75
Cronógrafo de carga solar.
Reserva de marcha ilimitada.

*Cristal*: Zafiro plano con
tratamiento antirreflejos.

*Dial*: Negro mate. Superluminova
BG-W9 grado X1. Taquímetro.

*Brazalete*: Acero macizo con
detalle pulido central. Cierre
con microajuste.
#pagebreak()

// Page 3 - Nürburgring y Karussell
*NÜRBURGRING: EL INFIERNO VERDE*

Nordschleife: 26 km, 90 curvas.
El circuito más legendario y
exigente de la Fórmula 1.

Desde 1927 ha visto a los más
grandes: Fangio, Moss, Stewart,
Lauda. El lugar donde se forjan
los "Ringmeister".

*LA CURVA KARUSSELL*

La más famosa del trazado. Una
curva peraltada que desafía las
leyes de la física. Requiere
precisión absoluta: meter el
coche en el centro, mantener la
inclinación máxima y dejar que
la curva te escupa hacia fuera.

Un error y vuelas. Karussell es
álgebra pura a cada vuelta.
#pagebreak()

// Page 4 - GP 1968
*GRAN PREMIO DE ALEMANIA 1968*

4 de agosto de 1968. Lluvia,
niebla, condiciones extremas.

Jackie Stewart, con una muñeca
fracturada, gana por 4 minutos
de ventaja en lo que muchos
consideran la mayor victoria
de la historia de la F1.

"Si no estabas asustado, no
estabas conduciendo lo bastante
rápido" — Frase atribuida a
Stewart sobre Nürburgring.

*KARUSELL RACING*

Nuestro primer modelo rinde
homenaje a este circuito alemán
y a su mítica curva. Dial con
detalles en naranja flúor como
los monoplazas de la época.
#pagebreak()

// Page 5 - ExoMars y Moeris Lacus
*EXOMARS: BUSCANDO VIDA*

Misión de la ESA y NASA para
buscar vida en Marte. La sonda
ExoMars Trace Gas Orbiter busca
metano y otros gases que puedan
indicar actividad biológica.

El módulo Schiaparelli intentó
aterrizar en 2016. Aunque se
estrelló a 300 km/h, abrió el
camino para futuras misiones.

*MOERIS LACUS*

"El Mar Principal". Zona de
albedo en Marte (7.91°N, 90°E).
Aprobada por la IAU en 1958.

Se cree que albergó agua y
posiblemente vida. Un misterio
que la ESA sigue investigando.
#pagebreak()

// Page 6 - Moeris Lacus Space
*MOERIS LACUS SPACE*

El segundo modelo honra las
misiones espaciales europeas
a Marte y el descubrimiento
del Moeris Lacus.

Dial limpio con agujas blancas,
estilo "herramienta de cabina"
para astronautas.

Trasera grabada con Marte en
relieve y satélite orbital.

"Mars is there, waiting to be
reached" — Buzz Aldrin

Ambos modelos comparten la misma
calidad y especificaciones,
diferenciándose en diseño y
homenaje: tierra vs espacio,
velocidad vs exploración.
#pagebreak()

// Page 7 - Instrucciones de uso
*INSTRUCCIONES DE USO*

*Carga solar*: Exponer el dial
a luz natural o artificial.
Reserva: 6 meses con carga
completa. Evitar guardar en
oscuridad prolongada.

*Cronógrafo*: Botón superior
inicia/para. Botón inferior
reinicia a cero. Trotadora
naranja mide segundos.
Subesferas: minutos (9h) y
horas (3h).

*Mantenimiento*: Revisar
estanqueidad cada 2 años.
Limpiar con paño suave.
Evitar golpes y campos
magnéticos intensos.

*Acumulador*: Batería recargable. 
Vida útil: 10-15 años
con uso normal.
#pagebreak()

// Page 8 - Back Cover
#block({
  image("racing_back.jpeg", width: 100%, height: 50%, fit: "cover")
})


#place(top + left, dx: 5mm, dy: 45mm, box(width: 100% - 10mm, text(black, size: 7pt)[

Cronógrafos solares de edición limitada. Homenaje al circuito de Nürburgring
y a las misiones espaciales europeas a Marte.

Desarrollado por la comunidad HdR en colaboración con Astar (2023).

Dos visiones, una excelencia.
]))

#place(bottom + left, dx: 5mm, dy: -5mm, text(black, size: 7pt)[
_RSWC · Hablemos de Relojes_
])
