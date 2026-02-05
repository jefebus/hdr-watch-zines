#import "../../src/lib.typ": watch_zine

#set document(author: "HdR · RSWC", title: "RSWC Typ VII-B · La guerra bajo el mar")
#set text(font: "Carlito", size: 7pt, lang: "es")
#set page("a4")

#show heading.where(level: 1): hd => {
  pad(top: 2em, text(10em, align(center, hd.body)))
}

#show: watch_zine.with(
  digital: json(bytes(sys.inputs.at("digital", default: "false"))),
  draw-border: true // draw border boxes in printing mode
)

///////////////////////////////////////////////////////////////////////////////
// 1) PORTADA
///////////////////////////////////////////////////////////////////////////////
#block({
  image("typ_vii-b_front.jpeg", width: 100%, height: 100%, fit: "cover")
  place(top + center, dy: 6mm, box(
    text(white, stroke: 0.6pt + black)[
      #text(size: 19pt)[*RSWC TYP VII-B*]\\
      #text(size: 13pt)[*La Batalla del Atlántico*]
    ]
  ))
})
#pagebreak()

///////////////////////////////////////////////////////////////////////////////
// 2) ESPECIFICACIONES TÉCNICAS
///////////////////////////////////////////////////////////////////////////////
*ESPECIFICACIONES TÉCNICAS*

- Modelo: RSWC Typ VII-B Taucheruhr
- Caja: acero, construcción masiva
- Hermeticidad: 500 metros
- Válvula de helio: sí
- Bisel: unidireccional
- Cristal: zafiro con AR interno
- Esfera: azul marino degradado (de negro a azul)
- Lumen: azul en índices, verde en agujas y punto del bisel
- Movimiento: PT5000 automático (HK Precision Technology)
  - Clon ETA 2824-2
- Brazalete: acero atornillado, cierre desplegable
- Corona: firmada RSWC
- Trasera: acero con relieve de tiburón
- Edición: limitada a 50 unidades

#pagebreak()

///////////////////////////////////////////////////////////////////////////////
// 3) ORIGEN HISTÓRICO · LA GUERRA BAJO EL MAR
///////////////////////////////////////////////////////////////////////////////
*LA BATALLA DEL ATLÁNTICO (1939–1945)*

Durante la Segunda Guerra Mundial, más de 40.000 marinos alemanes sirvieron en
submarinos. Cerca de 30.000 no regresaron jamás. La guerra bajo el mar fue una
lucha silenciosa, tecnológica y despiadada.

Bajo el impulso del almirante Karl Dönitz, Alemania apostó por el arma submarina
como única vía para asfixiar el suministro aliado. Así nació la estrategia de
las “manadas de lobos”, donde los U-Boot atacaban convoyes de noche.

El submarino se convirtió en símbolo de resistencia, aislamiento y peligro
constante: una máquina diseñada para combatir en las condiciones más extremas
del océano.

#pagebreak()

///////////////////////////////////////////////////////////////////////////////
// 4) EL SUBMARINO TIPO VII-B
///////////////////////////////////////////////////////////////////////////////
*EL TIPO VII-B: ESPINA DORSAL DE LA KREIGSMARINE*

Nunca se habían fabricado tantos submarinos de combate como los Tipo VII.
Más de 700 unidades convirtieron a esta clase en la espina dorsal de la
Kriegsmarine durante la Batalla del Atlántico.

El Tipo VII-B supuso una evolución clave respecto a modelos anteriores:
mayor alcance, mejor maniobrabilidad y capacidad ofensiva. Con él, el
U-47 de Günther Prien protagonizó una de las acciones más audaces de la guerra:
el ataque a la base británica de Scapa Flow.

Su silueta, contundente y funcional, es hoy uno de los iconos más reconocibles
de la ingeniería naval militar del siglo XX.

#pagebreak()

///////////////////////////////////////////////////////////////////////////////
// 5) VIDA A BORDO · ACERO, SILENCIO Y MIEDO
///////////////////////////////////////////////////////////////////////////////
*VIVIR EN UN U-BOOT*

La vida en un submarino era una mezcla de rutina, incomodidad y terror.
Espacios mínimos, aire viciado, temperaturas extremas y turnos interminables.

Los marinos dormían sobre torpedos, compartían literas y convivían con el
ruido constante de motores, bombas y válvulas. Bajo el agua, el silencio
era vital: cualquier error podía ser mortal.

El peligro era permanente. Las cargas de profundidad, los fallos mecánicos
y el desgaste psicológico convirtieron cada patrulla en una prueba de
resistencia física y mental.

#pagebreak()

///////////////////////////////////////////////////////////////////////////////
// 6) EL RELOJ · UN U-BOOT EN LA MUÑECA
///////////////////////////////////////////////////////////////////////////////
*CONCEPTO DEL RSWC TYP VII-B*

El RSWC Typ VII-B es un reloj de buceo extremo, diseñado como homenaje directo
a los submarinos de combate de la Segunda Guerra Mundial.

Su caja maciza, peso contundente y brazalete atornillado evocan la solidez
estructural de un U-Boot. La esfera azul degradada recuerda al Atlántico
inhóspito, y la segundera roja aporta un guiño funcional y distintivo.

El conjunto transmite herramienta pura: sin concesiones estéticas, pensado
para resistir y durar.

#pagebreak()

///////////////////////////////////////////////////////////////////////////////
// 7) DETALLES Y SEÑAS DE IDENTIDAD
///////////////////////////////////////////////////////////////////////////////
*DETALLES DISTINTIVOS*

Por primera vez en un RSWC, la trasera incorpora una figura en relieve:
el tiburón San Martin, símbolo que remite a las dentaduras pintadas en la
proa de muchos submarinos de guerra.

La esfera incluye el emblema de las gorras de los submarinistas alemanes,
y todos los textos están traducidos al alemán.

Cada detalle refuerza la narrativa: este no es un diver genérico, sino un
objeto con identidad, contexto histórico y coherencia temática.

#pagebreak()

///////////////////////////////////////////////////////////////////////////////
// 8) CONTRAPORTADA
///////////////////////////////////////////////////////////////////////////////
#block({
  image("typ_vii-b_back.jpeg", width: 100%, height: 100%, fit: "cover")
})

#place(bottom + left, dx: 6mm, dy: -6mm, text(black, size: 7pt)[
*RSWC Typ VII-B*  
Un homenaje a la guerra bajo el mar.  
Acero, silencio y profundidad.
])
