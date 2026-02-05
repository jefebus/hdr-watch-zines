#import "../../src/lib.typ": watch_zine

#set document(
  author: "HdR · RSWC",
  title: "RSWC Scaphandre II · La saga continúa"
)

#set text(font: "Carlito", size: 7pt, lang: "es")
#set page("a4")

#show heading.where(level: 1): hd => {
  pad(top: 2em, text(10em, align(center, hd.body)))
}

#show: watch_zine.with(
  digital: json(bytes(sys.inputs.at("digital", default: "false"))),
  draw-border: true
)

///////////////////////////////////////////////////////////////////////////////
// 1) PORTADA
///////////////////////////////////////////////////////////////////////////////
#block({
  image("scaphandre_II_front.jpeg", width: 100%, height: 100%, fit: "cover")

  place(top + center, dy: 6mm, box(
    text(white, stroke: 0.6pt + black)[
      #text(size: 18pt)[*RSWC SCAPHANDRE II*]\\
      #text(size: 14pt)[*La saga continúa*]
    ]
  ))
})
#pagebreak()

///////////////////////////////////////////////////////////////////////////////
// 2) ESPECIFICACIONES TÉCNICAS
///////////////////////////////////////////////////////////////////////////////
*ESPECIFICACIONES TÉCNICAS*

- Modelo: RSWC Scaphandre II
- Caja: monobloque en acero inoxidable 316L
- Diámetro: 45 mm
- Longitud L2L: 54,5 mm
- Grosor: 15 mm
- Paso de correa: 22 mm
- Hermeticidad: 1000 m / 100 ATM
- Bisel: cerámico unidireccional (120 clics)
- Cristal: zafiro con AR interno
- Movimiento: Seiko NH35 automático
- Lumen: Superluminova Swiss BGW9 azul
- Corona: roscada (dos versiones: a las 9 y a las 3)
- Correa: malla milanesa
- Peso aproximado: 220 g con correa
- Estuche: rígido “cofre” Astar

#pagebreak()

///////////////////////////////////////////////////////////////////////////////
// 3) ORIGEN · COUSTEAU Y EL RELOJ COMO HERRAMIENTA
///////////////////////////////////////////////////////////////////////////////
*COUSTEAU Y LA RELOJERÍA SUBMARINA*

Jacques-Yves Cousteau, el célebre comandante Cousteau, fue uno de los grandes
exploradores y divulgadores del mundo marino. Pionero en equipos de inmersión,
entendía el reloj como una herramienta vital: de su fiabilidad dependía incluso
la vida del submarinista.

En sus expediciones solo utilizaban lo mejor de cada época. Marcas como Aquastar,
Lip, Blancpain, Doxa, Omega o Rolex acompañaron a estos científicos franceses en
tests extremos y aventuras bajo el mar.

El Scaphandre II bebe directamente de ese espíritu: un reloj profesional nacido
de la exploración y la exigencia.

#pagebreak()

///////////////////////////////////////////////////////////////////////////////
// 4) PROFUNDIDAD · EL MITO DEL SEAMASTER 1000
///////////////////////////////////////////////////////////////////////////////
*EL DESAFÍO DE LOS 1000 METROS*

A principios de los años setenta, Omega colaboró estrechamente con Cousteau para
desarrollar relojes capaces de soportar profundidades nunca vistas.

Así nacieron piezas legendarias como el Ploprof 600 y, más tarde, el Seamaster 1000:
una auténtica bestia con un cristal mineral de 4,5 mm de grosor.

El Seamaster 1000 fue probado bajándolo a 1000 metros con el brazo robot del
submarino Beaver Mark IV, superando la prueba con éxito. Una proeza tecnológica
para su tiempo.

Ese mismo imaginario inspira el Scaphandre II: el reloj como máquina de combate
contra la presión.

#pagebreak()

///////////////////////////////////////////////////////////////////////////////
// 5) LA SAGA RSWC · SCAPHANDRE ORIGINAL
///////////////////////////////////////////////////////////////////////////////
*EL PRIMER SCAPHANDRE (2021)*

Cuando en 2021 apareció el primer RSWC Scaphandre, nadie imaginaba la enorme
aceptación que tendría un reloj de forma tan peculiar y tamaño tan masivo.

Aquel homenaje al Ploprof 600 destacaba por su resistencia al agua y por unos
acabados sorprendentes. Era una declaración de intenciones: un diver extremo,
sin concesiones, pensado para amantes de los relojes “plongueur”.

El Scaphandre II nace como continuación natural de esa saga marina.

#pagebreak()

///////////////////////////////////////////////////////////////////////////////
// 6) SCAPHANDRE II · UNA NUEVA BESTIA SUBMARINA
///////////////////////////////////////////////////////////////////////////////
*SCAPHANDRE II: CONTINUACIÓN DE UNA SAGA*

A mediados de 2022 surge una nueva reinterpretación del concepto: un diver de
proporciones generosas fabricado por Astar, pensado como herramienta profesional
de 1000 metros.

Caja monobloque, bisel cerámico, cristal de zafiro y una presencia imponente en
muñeca. El Scaphandre II no pretende ser discreto: es un reloj hecho para el
abismo.

Un reloj que evoca el Atlántico, los descensos extremos y la estética brutalista
de los grandes divers históricos.

#pagebreak()

///////////////////////////////////////////////////////////////////////////////
// 7) IDENTIDAD · HIPOCAMPO, LUMEN Y DOS VERSIONES
///////////////////////////////////////////////////////////////////////////////
*DETALLES DISTINTIVOS*

El Scaphandre II se ofrece en dos configuraciones: la clásica con corona a las 9,
y una variante histórica tipo prototipo con corona a las 3.

Su lumen BGW9 azul refuerza la lectura submarina, y el conjunto transmite una
identidad mitológica: el hipocampo, caballo marino asociado a Poseidón, símbolo
de poder y dominio del océano.

Cada elemento del reloj —caja, bisel, corona y malla— está pensado para ofrecer
una herramienta extrema, con estética de exploración y combate contra la presión.

#pagebreak()

///////////////////////////////////////////////////////////////////////////////
// 8) CONTRAPORTADA
///////////////////////////////////////////////////////////////////////////////
#block({
  image("scaphandre_II_back.jpeg", width: 100%, height: 100%, fit: "cover")
})

#place(bottom + left, dx: 6mm, dy: -6mm, text(black, size: 7pt)[
*RSWC Scaphandre II*  
Un diver masivo nacido del legado Cousteau.  
Acero, profundidad y leyenda submarina.
])
