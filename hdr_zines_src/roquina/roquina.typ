#import "../../src/lib.typ": watch_zine

#set document(author: "HdR", title: "Sol y Sombra – Roquina")
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
  image("roquina_front.jpeg", width: 100%, height: 100%, fit: "cover")
  place(top + center, dy: 3mm, box(
    fill: rgb(0, 0, 0, 150),
    inset: 8pt,
    radius: 4pt,
    text(white, stroke: 0.5pt + black)[
      #text(size: 12pt)[*Sol y Sombra*]\ 
      #text(size: 10pt)[*Roquina*]
    ]
  ))
})#pagebreak()

*ESPECIFICACIONES TÉCNICAS*
- Caja de acero 316L Swiss Grade, 5 ATM
- 40mm sin corona, lug to lug: 44.5mm, espesor: 16,5mm
- Asas: 20mm, corona roscada 6mm con logo SyS
- Superluminova Swiss C3
- Cristal de zafiro facetado con TT/AA azulado
- Trasera roscada con dibujo protegido por zafiro (2 tapas)
- Correa Bund + milanesa, hebilla grabada
- Seiko NH36, automático con remonte manual
- 21.600 VPH / 3Hz, 24 rubíes, 41h reserva
#pagebreak()

*DESCRIPCIÓN DEL RELOJ*

El Sol y Sombra Roquina es un homenaje al cine español de los años setenta y 
a la película "Yo hice a Roque III" (1980) protagonizada por Andrés Pajares, 
Fernando Esteso y Antonio Ozores, dirigida por Mariano Ozores.

Su diseño captura la esencia vintage de aquella época dorada del cine español, 
con un cristal facetado de zafiro artesanal que remite a los relojes setenteros 
que hoy son joyas de colección.

El cristal facetado es su elemento distintivo. Tallado a mano por artesanos 
especializados, cada zafiro es único. Las aristas nítidas y las facetas 
geométricas crean juegos de luz que cambian con cada movimiento.

#pagebreak()

*EL ESPÍRITU DE ROQUE III*

En la película, Roque Tercero González fue boxeador aficionado durante su 
servicio militar en Ceuta. Allí perfeccionó su "golpe especial": la roquina.

Federico, su amigo, le convence para que vuelva a boxear y deje de gorrear. 
Le recuerda aquel golpe legendario, aunque lo llama erróneamente "la rosquilla".

La roquina es un golpe en tres fases: distracción del contrincante, 
coger inercia con el brazo, y ejecución implacable. Así de directo y eficaz 
como el diseño de este reloj.

Las tres estrellas en la esfera honran a los tres astros: Andrés Pajares, 
Fernando Esteso y Antonio Ozores.

#pagebreak()

*CRISTAL FACETADO ARTESANAL*

El principal desafío técnico del Roquina fue conseguir un cristal de zafiro 
facetado. Mientras que en cristal mineral es sencillo, el zafiro requiere 
un proceso artesanal complejo.

Se parte de un zafiro domed de alta calidad y considerable altura. Cada 
faceta plana y cada arista afilada se tallan y pulen manualmente.

La dureza del zafiro hace inviable el mecanizado. Los operarios deben 
trabajar lentamente para lograr el mejor acabado posible.

Esta dureza que dificulta el tallado también garantiza que las aristas 
se mantengan nítidas con el uso. Cada cristal facetado es único.

#pagebreak()

*DOBLE TAPA TRASERA Y CORREAS*

El Roquina incluye dos tapas intercambiables:

Tapa 1: Dibujo del combate final protegido por zafiro.

Tapa 2: Sello Sol y Sombra en placado IP oro.

Ambas con anclaje por tornillos.

*Correas incluidas:*

Bund de piel: Estilo setentero, hebilla grabada.

Milanesa: Acero pulido 20mm para lucir la trasera.

#pagebreak()

*VERSIONES DISPONIBLES*

Roquina Azul: La versión clásica con esfera azul, marcadores cromados 
y franja vertical en tono suave que acentúa los brillos del cristal facetado.

Roquina Verde: Esmeralda vintage con el mismo diseño pero en un tono 
verde profundo que era muy popular en los setenta.

Roquina Tabaco: Versión "castiza" con índices y agujas dorados, tonos 
tabaco, y correa Bund marrón. El look más setentero de todos.

Todas incluyen superluminova Swiss C3 en agujas y marcadores para 
excelente visibilidad nocturna.

#pagebreak()

#image("roquina_back.jpeg", width: 100%, height: 50%, fit: "cover")

#place(top + left, dx: 5mm, dy: 45mm, box(width: 100% - 10mm, text(black, size: 7pt)[
La tapa trasera roscada incluye dos versiones: una con dibujo a todo color 
de la pelea final protegido por cristal de zafiro, y otra con el sello 
Sol y Sombra en relieve y placado IP oro. Sistema de anclaje por tornillos 
que mantiene ambas siempre rectas.
]))

#place(bottom + left, dx: 5mm, dy: -5mm, text(black, size: 7pt)[
_Sol y Sombra · Hablemos de Relojes_
])
