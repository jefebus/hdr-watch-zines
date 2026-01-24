#import "../../src/lib.typ": watch_zine

#set document(author: "Gasparacha", title: "RSWC Gamma Gibraltar")
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
  image("gamma_gibraltar_front.jpeg", width: 100%, height: 100%, fit: "cover")
  place(top + center, dy: 5mm, box(
    text(white, stroke: 0.5pt + black)[
      #text(size: 20pt)[*RSWC*]\ 
      #text(size: 16pt)[*Gamma Gibraltar*]
    ]
  ))
})
#pagebreak()

*ESPECIFICACIONES TÉCNICAS*
- Caja de acero de 44 mm
- Corona roscada
- Cristal de zafiro con AR interno incoloro
- Tapa roscada con zafiro y movimiento a la vista
- Dial tipo *sandwich* con Super-LumiNova C3
- Movimiento de carga manual Seagull ST3600 (segundera a las 9)
- Resistencia al agua: 100 metros
- Tres correas de piel de alta calidad (negra, marrón y marrón claro con pespunte blanco)
- Tres hebillas firmadas (motivo torpedo *Maiale*)
- Cofrecito negro Astar

#pagebreak()

*DESCRIPCIÓN DEL RELOJ*

El *Gamma Gibraltar* es un proyecto ambicioso de la RSWC que
mezcla relojería y relato histórico. Toma como punto de partida
una caja de alta calidad (base Baltany) pero se transforma a fondo
para capturar el espíritu *incursori*: esfera creada desde cero,
agujas *custom* y un movimiento de carga manual con segundera a
las 9, pensado para un guiño más “militar” y clásico.

El resultado es un reloj con estética sobria y funcional, con gran
legibilidad y un carácter muy marcado: un homenaje a los buzos de
combate italianos que operaron contra Gibraltar entre 1941 y 1943.

#pagebreak()

*UN “CABALLO DE TROYA” EN LA BAHÍA*

Primavera de 1943. En la bahía de Algeciras, varios mercantes
anclados saltan por los aires en plena noche. El golpe llega desde
un enemigo invisible que ataca el orgullo británico en el
Mediterráneo: la base de la Fuerza H.

La historia arranca con un mercante cisterna italiano, el *Olterra*,
que queda varado en la bahía tras la entrada de Italia en la guerra.
Lo que parecía un barco inútil termina convertido en un auténtico
“Caballo de Troya”: una base clandestina desde la que lanzar
incursiones contra Gibraltar.

#pagebreak()

*EL OLTERRA Y LOS “MAIALE”*
La *Decima Flottiglia MAS* (X MAS) fue la unidad italiana de
operaciones especiales navales más célebre de la guerra. Sus hombres,
altamente cualificados, ejecutaban sabotajes en puertos enemigos
tanto con torpedos tripulados (*SLC / Maiale*) como “a pelo”,
equipados con lo mínimo: traje, respirador, brújula, cuchillo,
reloj y bombas lapa.

Al reforzarse las defensas de Gibraltar, la solución fue operar desde
España. El *Olterra* se remolcó hasta quedar frente a la roca y se
acondicionó con: un taller, una piscina interior y una apertura en el casco que comunicaba con el mar.
Desde allí se lanzarían los *Maiale* en noches de mal tiempo,
buscando mercantes y, cuando se pudo, objetivos mayores.

#pagebreak()

*DIAL SANDWICH, LUMINISCENCIA Y LEGIBILIDAD*

La luminiscencia no es un adorno: es parte del relato. Un dial
*sandwich* con Super-LumiNova C3 evoca la necesidad real de los
buzos de combate, que dependían de la lectura instantánea en
condiciones extremas.

La arquitectura del reloj está pensada para la claridad:
contrastes fuertes, marcadores recortados y agujas diseñadas
desde cero. La tapa trasera con zafiro y el movimiento a la vista completan el
discurso: mecánica expuesta, sin artificios.

El reloj se entrega con tres correas de piel: negra, marrón y marrón
claro tipo “desert”, montada de serie. Las tres incluyen hebilla
grabada con el torpedo *Maiale*.
#pagebreak()

*INSTRUCCIONES DE USO*

El Seagull ST3600 es un movimiento mecánico de carga manual.
Para dar cuerda, desenrosca la corona y gira suavemente en sentido
horario (aprox. 25–40 vueltas desde vacío). No fuerces al llegar al
tope: la sensación de resistencia indica que está cargado.

*Ajuste de hora:* extrae la corona a la posición de ajuste y mueve
las agujas hasta la hora deseada. Evita cambios bruscos de sentido
si notas resistencia.

*Uso en agua:* asegúrate siempre de que la corona esté bien
roscada antes de mojarlo. Tras uso en agua salada, enjuaga con agua
dulce y seca con un paño suave.

#pagebreak()

#image("gamma_gibraltar_back.jpeg", width: 100%, height: 50%, fit: "cover")

#place(top + left, dx: 5mm, dy: 45mm, box(width: 100% - 10mm, text(black, size: 7pt)[
Un homenaje de la RSWC a la *Decima Flottiglia MAS* y al “Caballo de Troya”
del *Olterra* en la Bahía de Algeciras (1942–1943). Un reloj sobrio,
mecánico y con historia: *Gamma Gibraltar*.
]))

#place(bottom + left, dx: 5mm, dy: -5mm, text(black, size: 7pt)[
_RSWC · Hablemos de Relojes_
])
