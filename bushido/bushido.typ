#import "../src/lib.typ": watch_zine

#set document(author: "HdR", title: "RSWC Bushido / Midori")
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
  image("bushido_front.jpeg", width: 100%, height: 100%, fit: "cover")
  place(top + center, dy: 5mm, box(
    text(white, stroke: 0.5pt + black)[
      #text(size: 20pt)[*RSWC*]\ 
      #text(size: 16pt)[*Bushido*]
    ]
  ))
})
#pagebreak()

*ESPECIFICACIONES TÉCNICAS*
- Caja acero 316L de 39 mm
- Lug to lug: 47,7 mm
- Grosor: 13 mm
- Ancho correa: 20 mm
- Corona roscada RSWC
- Bisel cerámico unidireccional
- Índices y agujas dorados
- Movimiento Seiko NH35
- Cristal zafiro con AR incoloro
- Brazalete acero con microajuste
- Correa Tropic FKM negra
- Resistencia: 200 metros

*Versión roja (limitada 47 ud):*
- Esfera roja granate degradada y Super-LumiNova BGW9 (azul)

*Versión Midori:*
- Esfera verde degradada y Super-LumiNova C3 (verde)

#pagebreak()

*DESCRIPCIÓN DEL RELOJ*

El RSWC Bushido homenajea a los 47 Ronin y al Seiko 62MAS de 1965. Diseñado por Girolamo con la 
comunidad HdR en dos versiones:

*Versión roja:* Esfera granate degradada con lumen BGW9 azul. Limitada a 47 unidades (agotada). 
Simboliza el honor y sacrificio.

*Versión Midori:* Esfera verde degradada con lumen C3 verde. Representa el 
renacimiento del clan Asano y su conexión con la naturaleza.

#pagebreak()

*LA LEYENDA DE LOS 47 RONIN*

En 1701, Asano Naganori, señor 
de Akō, fue provocado por Kira 
en el Castillo de Edo. Atacó 
a su agresor con una daga.

Por desenvainar un arma en el 
castillo fue condenado a seppuku. 
Sus samurái quedaron sin señor.

Durante 22 meses, 47 ronin bajo 
Oishi Kuranosuke planearon la 
venganza. Fingieron vida disoluta 
para despejar sospechas.

En invierno de 1703 asaltaron 
la residencia de Kira. Tras 
cumplir su misión, los 47 
practicaron seppuku.

Su sacrificio restauró el honor 
del clan Asano, convirtiéndose 
en símbolo eterno del bushido.

#pagebreak()

*EL SEIKO 62MAS: PRIMER DIVER JAPONÉS*

En 1965, Seiko lanzó el 62MAS, primer reloj de buceo profesional japonés con 150m de resistencia. 
Con bisel giratorio de aluminio, esfera rayos de sol e índices luminiscentes, marcó un hito en la 
relojería nipona.

Su caja de 37mm, cristal acrílico y correa tropical de caucho se convirtieron en referencia. El 62MAS 
demostró su fiabilidad en la Expedición Antártica Japonesa de 1966-1969.

Este reloj fue el padre fundador de los divers japoneses y antepasado de modelos emblemáticos como la 
serie SKX. El nombre MAS deriva de "Seikomatic Self-dater".

#pagebreak()

*DISEÑO Y PERSONALIZACIÓN*

Mantiene las líneas del 62MAS 
actualizadas a 39mm. Garras 
protegen la corona.

*Roja:* honor y sacrificio.
*Midori:* renacimiento y naturaleza.

Bisel cerámico con numerales 
hueco-grabados.

Trasera grabada: ronin ante 
el sol a través de un torii, 
sakura de samurái caídos. 
Serie "47" estilo hanko (roja). 
Mon del clan: plumas de halcón.

Cierre con casco samurái y 
sakura. Correa Tropic negra. 
Cofre Astar incluido.

#pagebreak()

*INSTRUCCIONES DE USO*

Movimiento NH35 automático: 
se carga con el movimiento. 
Admite carga manual girando 
corona (20–30 vueltas).

*Ajuste:* desenroscar corona. 
Primer punto: cambiar fecha. 
Segundo punto: ajustar hora. 
No ajustar fecha 21:00–03:00.

*Mantenimiento:* tras agua 
salada, enjuagar y secar. 
Bisel cerámico resistente, 
evitar impactos fuertes.

Revisar estanqueidad anual 
si usas en inmersión. Servicio 
completo cada 4–5 años.

#pagebreak()

#image("bushido_back.jpeg", width: 100%, height: 50%, fit: "cover")

#place(top + left, dx: 5mm, dy: 45mm, box(width: 100% - 10mm, text(black, size: 7pt)[
Proyecto comunitario RSWC. Dos versiones: roja limitada 47 unidades (agotada) y 
verde Midori. Homenaje a los 47 Ronin y al Seiko 62MAS. Grabado con ronin, torii y sakura. 
Mon del clan Asano.
]))

#place(bottom + left, dx: 5mm, dy: -5mm, text(black, size: 7pt)[
_RSWC · Hablemos de Relojes_
])
