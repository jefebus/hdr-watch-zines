#import "../src/lib.typ": watch_zine

#set document(author: "Gasparacha", title: "RSWC Supersharkomatic")
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
  image("supersharkomatic_front.jpeg", width: 100%, height: 100%, fit: "cover")
  place(top + center, dy: 5mm, box(
    text(white, stroke: 0.5pt + black)[
      #text(size: 20pt)[*RSWC*]\ 
      #text(size: 16pt)[*Supersharkomatic*]
    ]
  ))
})
#pagebreak()

*ESPECIFICACIONES TÉCNICAS*
- Caja de acero inoxidable tipo "cushion" de 44 mm
- Movimiento automático Seiko NH35
- Con carga manual y parada de segundero
- Cristal de zafiro con tratamiento antirreflejo
- Bisel unidireccional de buceo
- Trasera ciega roscada con grabado exclusivo de tiburón
- Lumen BGW-9 azul en índices y agujas
- Correa de silicona negra estilo Tropic
- Cierre con hebilla clásica
- Resistencia al agua: 200 metros

#pagebreak()

*DESCRIPCIÓN DEL RELOJ*

El Supersharkomatic es un reloj de buceo con estética 
retro que rinde homenaje a los relojes de inmersión 
clásicos de los años 70.

Su imponente caja cushion y su bisel unidireccional 
lo dotan de una presencia robusta y profesional. 
Está diseñado para destacar tanto dentro como fuera 
del agua.

Su diseño combina elementos tradicionales con tecnología 
moderna, como el lumen BGW-9 y el cristal zafiro.

La elección del movimiento Seiko NH35 garantiza 
fiabilidad y facilidad de mantenimiento, mientras que 
el grabado del tiburón en la trasera refuerza su 
identidad marina.

#pagebreak()

*UN DIVER DE AUTOR*

El Supersharkomatic nació como un "diver de autor" 
dentro del entorno creativo de HdR. Inspirado en los 
relojes de buceo vintage, fue diseñado para ofrecer 
un homenaje lúdico y potente al espíritu libre de 
los años 70.

El proyecto reunió ideas y aportes de distintos foreros, 
dando forma a un reloj valiente, poco convencional y 
cargado de personalidad.

No fue un encargo a fábrica, sino una expresión genuina 
de diseño forero. Representa una visión libre y creativa 
de la relojería.

Desde su lanzamiento, ha sido símbolo de creatividad y 
entusiasmo colectivo.

#pagebreak()

*DISEÑO CUSHION Y HERENCIA*

El nombre "Supersharkomatic" evoca los grandes diver 
automáticos de antaño, como el Doxa Sub o los primeros 
Seiko de buceo.

El tiburón grabado en la trasera simboliza potencia, 
libertad y dominio marino. Una criatura perfectamente 
adaptada a su medio, como este reloj al entorno acuático.

El diseño cushion se remonta a los relojes de los años 
60 y 70 usados en ambientes extremos. Es una forma que 
mejora la ergonomía y protege mejor la corona y el cristal.

Este proyecto rinde homenaje, sin ataduras, a la 
relojería de exploración.

#pagebreak()

*LUMEN Y FUNCIONALIDAD*

El lumen BGW-9, de tono azul, es una mejora moderna 
que ofrece excelente visibilidad nocturna, reforzando 
su carácter funcional.

El bisel unidireccional permite medir tiempos de 
inmersión con seguridad, evitando giros accidentales 
que puedan dar lecturas peligrosas.

La correa de silicona estilo Tropic es un guiño 
directo a las correas clásicas de buceo, flexibles, 
resistentes y cómodas tanto en el agua como fuera.

Este reloj no solo es una herramienta funcional de 
buceo, sino una pieza con carácter, pensada para los 
amantes de la estética vintage y la robustez mecánica.

#pagebreak()

*INSTRUCCIONES DE USO*

El movimiento Seiko NH35 es automático con posibilidad 
de carga manual y parada de segundero. Puede cargarse 
con el movimiento de la muñeca o girando la corona 
manualmente (20-30 vueltas).

*Ajuste de hora y fecha:* Sacar la corona al primer 
clic para ajustar la fecha, y al segundo clic para 
ajustar la hora. No ajustar la fecha entre las 20:00 
y las 04:00 para evitar daños al mecanismo.

*Mantenimiento:* Evitar impactos fuertes. Tras uso 
acuático, enjuagar con agua dulce. Revisar la 
estanqueidad anualmente. Servicio técnico recomendado 
cada 4-5 años para mantener el rendimiento óptimo.

#pagebreak()

#image("supersharkomatic_back.jpeg", width: 100%, height: 50%, fit: "cover")

#place(top + left, dx: 5mm, dy: 45mm, box(width: 100% - 10mm, text(black, size: 7pt)[
La trasera ciega presenta un grabado exclusivo de un tiburón, 
símbolo de potencia y dominio marino. Un diver de autor creado 
por y para la comunidad HdR.
]))

#place(bottom + left, dx: 5mm, dy: -5mm, text(black, size: 7pt)[
_RSWC Supersharkomatic · \ 
Hablemos de Relojes_
])
