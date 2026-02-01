#import "../../src/lib.typ": watch_zine

#set document(author: "HdR", title: "RSWF King Tuna")
#set text(font: "Carlito", size: 7pt, lang: "es")
#set page("a4")

#show heading.where(level: 1): hd => {
  pad(top: 2em, text(10em, align(center, hd.body)))
}

#show: watch_zine.with(
  digital: json(bytes(sys.inputs.at("digital", default: "false"))),
  draw-border: true
)

// cover
#block({
  image("kingtuna_front.jpeg", width: 100%, height: 100%, fit: "cover")
  place(top + center, dy: 5mm, box(
    fill: rgb(0, 0, 0, 150),
    inset: 8pt,
    radius: 4pt,
    [
      #text(white, size: 20pt, stroke: 0.5pt + black)[*RSWF*]\
      #text(white, size: 16pt, stroke: 0.5pt + black)[*KING TUNA*]\
      #text(white, size: 14pt, stroke: 0.5pt + black)[*SUPER ENGINEER*]
    ]
  ))
})
#pagebreak()

*ESPECIFICACIONES TÉCNICAS*

- Caja en acero, 47mm sin corona (se lleva como un 44mm).
- Bisel cerámico unidireccional con lume.
- Cristal de zafiro sin tratamiento AR.
- Superluminova C3 verde.
- Esfera Deep Black o Marine Blue.
- Movimiento: Seiko NH35A automático, 24 jewels, 21600 vph.
- Impermeable: 300 metros.
- Trasera roscada grabada RSWF-HdR.
- Corona firmada.
- Brazalete Super Engineer en acero.
- Ancho de correa: 22mm.
#pagebreak()

*EL ATAQUE DE LA BESTIA*

"A la bestia nos la encontramos en el camino a Heian-kyō... Reaccionamos tarde... demasiado tarde."

"Salió de las oscuras aguas del pantano, o directamente de las entrañas de la Tierra... no lo recuerdo con exactitud."

"Cuando me incorporé de recoger mi arma y miré a mi alrededor... ya estaba solo..."

El King Tuna Super Engineer es una bestia de reloj que ni siquiera podíamos soñar tener en 2007.

Un homenaje al legendario Seiko Tuna, de la mano de ASTAR y el foro RSWF.
#pagebreak()

*BRAZALETE SUPER ENGINEER*

Características del brazalete incluido:

- Construcción robusta en acero inoxidable
- Ancho: 22mm
- Sistema de ajuste con barras de pasador
- Eslabones sólidos, no huecos
- Diseño polivalente compatible con múltiples relojes
- Cierre desplegable con seguridad
- Acabado pulido y cepillado
- Peso equilibrado para relojes grandes
- Fácil instalación y ajuste
#pagebreak()

*RISING SUN WATCHES*

Este reloj rinde homenaje a\ 
www.risingsunwatches.com, el dominio con el que todo empezó en 2007.

RSWF fue el primer foro independiente de relojes japoneses en español. The Rising Sun Watch Forum.

En 2007 mantuvimos estrechos lazos con WUS, intercambio de ideas, foreros en común y hasta moderadores compartidos.

El foro creció y evolucionó a HdR, pero los inicios RSWF merecen este triple homenaje: al foro, a la marca Seiko y a la escritura.
#pagebreak()

*CONSTRUCCIÓN BESTIAL*

47mm suenan intimidantes, pero la forma de la caja hace que se lleve como un 44mm.

Cristal de zafiro sin AR: evita reflejos azulados sobre la esfera oscura.

Bisel cerámico con lume: inmersiones nocturas seguras.

NH35A: fiabilidad ante todo. El caballo de batalla de Seiko.

Trasera roscada personalizada con los logos RSWF-HdR, símbolo de nuestra comunidad.

#pagebreak()

*INSTRUCCIONES DE USO*

*Carga:* Dar cuerda manual o usar diariamente. Reserva: 41 horas aprox.

*Corona:* Posición normal (roscada), posición 1 (ajuste hora). Atornillar tras ajuste.

*Bisel:* Unidireccional. Alinear triángulo con minutero para medir tiempo.

*Resistencia:* 300m. Buceo recreativo. Verificar estanqueidad anual.

*Brazalete:* Ajustar con barras. Limpieza con agua y jabón.

*Mantenimiento:* Servicio cada 3-5 años.

*Cuidado:* Evitar golpes. Lavar con agua dulce tras mar.
#pagebreak()

// back cover
#block({
  image("kingtuna_back.jpeg", width: 100%, height: 50%, fit: "cover")
})

#place(top + left, dx: 5mm, dy: 45mm, box(width: 100% - 10mm, text(black, size: 7pt)[
47mm de puro músculo relojero con el corazón del fiable NH35A de Seiko. Homenaje al legendario Seiko Tuna, este proyecto de noviembre 2020 representa el sueño inalcanzable de 2007 hecho realidad.
]))

#place(bottom + left, dx: 5mm, dy: -5mm, text(black, size: 7pt)[
_RSWF · Hablemos de Relojes_
])
