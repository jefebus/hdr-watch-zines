#import "../src/lib.typ": watch_zine

#set document(author: "Jefebus", title: "RSWC Vainqueur")
#set text(font: "Calibri", size: 7pt, lang: "es")

#set page("a4")

// update heading rule to show that style is preserved
#show heading.where(level: 1): hd => {
  pad(top: 2em, text(10em, align(center, hd.body)))
}

#show: watch_zine.with(
  digital: json(bytes(sys.inputs.at("digital", default: "false"))),
  draw-border: true // draw border boxes in printing mode
)

// cover

#block({
  image("img_2.jpeg", width: 100%, height: 100%, fit: "cover")  
  place(top + center, dy: 5mm, text(white, size: 20pt)[
      *RSWC*\ 
      *Vainqueur*
  ])
})

#pagebreak()

*ESPECIFICACIONES TÉCNICAS*

- Caja de acero 316 bi-componente
- Caja cuadrada 39x39mm
- Espesor: 16,60mm
- Lug to lug: 46,5mm
- Anchura de asas: 22mm
- Cristal de zafiro con tratamiento antirreflejos (AR) interior
- Calibre: Peacock SL4617, automático con 28.800 alternancias/h
- Cronógrafo, fecha a las seis
- Resistencia al agua: 50 metros
- Peso: 120 gramos

#pagebreak()

*DESCRIPCIÓN DEL RELOJ*

El Vainqueur presenta una caja cuadrada de 39 milímetros 
de lado con acabado en acero inoxidable 316 bicomponente. 
Su espesor en su marte más gruesaes de 16,6 milímetros. 
Los 46,5 milímetros de altura lo hacen llevable para muchas muñecas.

La esfera cuenta con subesferas que albergan el segundero del reloj 
a las 9 y el subcronógrafos de 30 minutos a las 3. 

Los índices aplicados en acero generan contrastes visuales nítidos. 
El cristal de zafiro con tratamiento antirreflejante protege la esfera.


#pagebreak()

*PALETA DE COLORES*

Negro Carbón\ 
Elegancia pura y atemporal. Versátil para cualquier circunstancia.

Púrpura Nocturno\ 
Una edición pensada para los audaces. 

Azul Côte d'Azur\ 
Inspirado en la serenidad mediterránea. 

Rosso Italia\ 
Homenaje al color legendario de la Fórmula 1.

Azul/Amarillo Nano\ 
Edición especial que evoca duelos épicos. Rivalidades legendarias grabadas en acero.

#pagebreak()

*INSPIRACIÓN EN LA FÓRMULA 1*

El Vainqueur toma su nombre de la victoria en circuito y
su espíritu de la Fórmula 1. Así como los monoplazas han
evolucionado durante 75 años hacia máquinas de precisión 
extrema, RSWC ha materializado esa obsesión por la 
excelencia en acero y movimiento mecánico.

Cada detalle refleja esa búsqueda: cronógrafo automático, 
caja bi-componente, cristal de zafiro. Los colores especiales 
—Rosso Italia y Azul/Amarillo Nano— homenajean las rivalidades
legendarias de la F1. Un reloj que celebra la velocidad y 
respeta su legado.

#pagebreak()

*CRONÓGRAFO AUTOMÁTICO*

Producir un cronógrafo automático a precio accesible no es
sencillo. Los movimientos de cronógrafo automático son 
complejos y caros de fabricar, lo que explica por qué 
suelen reservarse para relojes de lujo.

RSWC ha conseguido integrar un Peacock SL4617 totalmente 
funcional, un movimiento basado en el archiconocido Valjoux
7750. Subcronógrafo de 30 minutos, precisión garantizada, 
durabilidad probada. Es un reloj para quienes buscan mecánica
pura a un coste razonable.

#pagebreak()

*INSTRUCCIONES DE CUIDADO Y MANTENIMIENTO*

Ajuste de hora: Tira corona hasta la posición dos. 
Gira suavemente hasta la hora deseada.

Ajuste de fecha: Tira corona hasta la posición uno. 
Gira hacia adelante para avanzar fecha. 
*Evita cambios entre 22h y 2h.*

Uso del cronógrafo: Pulsa el botón de las 2 para iniciar, pulsa de nuevo para parar. 
Pulsa el botón de las 4 para resetear. 
En uso normal se recomienda mantener el crono parado: 
la aguja central del segundero permanecerá parada mientras que el segundero 
a las 9 es el que marcará los segundos del reloj.

#pagebreak()

#image("img_1.jpeg", width: 100%, height: 50%, fit: "cover")

#block(inset: 5mm)[
La trasera atornillada alberga una ventana de cristal de 
zafiro que permite contemplar la rueda de balancín del 
movimiento Peacock SL4617 en su danza continua.

RSWC – Hablemos de Relojes
]


