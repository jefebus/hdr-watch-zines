#import "../../src/lib.typ": watch_zine

#set document(author: "HdR", title: "RSWF SevenSeas")
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
  image("sevenseas_front.jpeg", width: 100%, height: 100%, fit: "cover")
  place(top + center, dy: 5mm, box(
    fill: rgb(0, 0, 0, 150),
    inset: 8pt,
    radius: 4pt,
    [
      #text(white, size: 20pt, stroke: 0.5pt + black)[*RSWF*]\
      #text(white, size: 16pt, stroke: 0.5pt + black)[*SEVENSEAS*]\
      #text(white, size: 14pt, stroke: 0.5pt + black)[*MONOBLOCK*]
    ]
  ))
})
#pagebreak()

*ESPECIFICACIONES TÉCNICAS*

- Caja monoblock en acero de una sola pieza, 44mm sin corona.
- Bisel cerámico unidireccional con lume.
- Cristal de zafiro sin tratamiento AR.
- Superluminova C3 verde.
- Esfera Deep Black o Marine Blue.
- Movimiento: Seiko NH35A automático, 24 jewels, 21600 vph.
- Impermeable: 300 metros.
- Trasera grabada HdR-RSWF.
- Corona firmada.
- Correa de goma. Ancho: 20mm.
#pagebreak()

*EL CASTILLO DE LOS SIETE MARES*

"Abrir las puertas del castillo que vigila los Siete Mares no es tarea fácil. Alguna señal ya lo indica en el camino. No intentes abrirlas... Los osados perecerán en el intento."

La caja monoblock es el alma de este reloj. Una fortaleza impenetrable tallada en una sola pieza de acero. Los secretos que guarda en su interior permanecerán ocultos para siempre.

El SevenSeas representa los siete mares que protege: Pacífico Norte y Sur, Atlántico Norte y Sur, Índico, Ártico y Antártico.
#pagebreak()

*CAJA MONOBLOCK: INVENCIBLE*

La construcción monoblock es única. La caja y el fondo forman una sola pieza. El movimiento se instala por la parte frontal, bajo el cristal.

Esta construcción ofrece:
- Máxima resistencia al agua
- Imposibilidad de forzar la trasera
- Hermetismo absoluto
- Durabilidad excepcional

Nadie podrá derrotar al guardián de los siete mares. Ni descubrir los secretos que oculta su corazón de acero.

El bisel cerámico con lume permite inmersiones nocturnas seguras.
#pagebreak()

*RISING SUN WATCH FORUM*

Este reloj forma parte del triple homenaje a los inicios del foro RSWF, la marca que nos enamoró y la escritura.

En 2007 nació RSWF, primer foro independiente de relojes japoneses en español. De ahí creció HdR.

El SevenSeas rinde tributo a aquellos inicios, cuando soñábamos con tener un Marinemaster pero no podíamos permitírnoslo.

Este proyecto se hizo realidad en noviembre de 2020, en colaboración con ASTAR (Apocalypse Now) y el diseño de Girolamo.
#pagebreak()

*HOMENAJE A LA ESCRITURA*

HdR es hoy un monumento escrito del mundo del reloj. Más de 1.300.000 escritos desde su creación.

Se han contado aquí increíbles historias relojeras y personales. Se han forjado vínculos de amistad que perdurarán décadas.

El SevenSeas es para los precavidos que admiran la imponente estructura del castillo desde la distancia.

Su correa de goma hace el precio más accesible sin sacrificar calidad. Compatible con cualquier brazalete de 20mm.
#pagebreak()

*INSTRUCCIONES DE USO*

*Carga:* Dar cuerda manual o llevar en muñeca. El NH35A tiene aprox. 41 horas de reserva de marcha.

*Corona:* Posición normal (pegada), posición 1 (ajuste de hora). No forzar.

*Bisel:* Giratorio unidireccional. Para medir tiempos de inmersión, girar hasta alinear el triángulo con el minutero.

*Resistencia:* 300m. Apto para buceo recreativo. Comprobar estanqueidad periódicamente.

*Correa:* Lavar con agua dulce tras contacto con agua salada. Secar bien antes de guardar.

*Mantenimiento:* Revisión cada 3-5 años recomendable.
#pagebreak()

// back cover
#block({
  image("sevenseas_back.jpeg", width: 100%, height: 50%, fit: "cover")
})

#place(top + left, dx: 5mm, dy: 45mm, box(width: 100% - 10mm, text(black, size: 7pt)[
El SevenSeas Monoblock es el guardián invencible de los siete mares. Su caja de una sola pieza de acero representa la fortaleza impenetrable que protege los secretos del RSWF. 
]))

#place(bottom + left, dx: 5mm, dy: -5mm, text(black, size: 7pt)[
_RSWF · Hablemos de Relojes_
])
