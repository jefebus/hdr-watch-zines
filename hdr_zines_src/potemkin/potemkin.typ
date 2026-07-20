#import "../../src/lib.typ": watch_zine

#set document(author: "HdR", title: "RSWC Potemkin")
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
  image("potemkin_front.jpeg", width: 100%, height: 100%, fit: "cover")
  place(top + center, dy: 3mm, box(
    fill: rgb(0, 0, 0, 150),
    inset: 8pt,
    radius: 4pt,
    text(white, stroke: 0.5pt + black)[
      #text(size: 12pt)[*RSWC*]\ 
      #text(size: 10pt)[*Potemkin*]
    ]
  ))
})#pagebreak()

*ESPECIFICACIONES TÉCNICAS*
- Caja de 45 mm punta a punta
  (43,5 mm de centro a centro)
- Lug to lug: 49 mm
- Grosor: 14 mm (15 mm con cristal)
- Paso entre asas: 22 mm
- Movimiento automático Miyota 8205
- Calendario doble en cirílico
- Cristal plano de zafiro, AR azul
- Bisel de zafiro bicolor rojo/azul
- Trasera *oil press* bicolor grabada
- Hermeticidad: 300 m (30 ATM)
- Dos versiones: *Zavod* y *Vintage*
- Brazalete milanesa de acero

#pagebreak()

*UNA HISTORIA, NO UN RELOJ*

Hay relojes que nacen de un movimiento,
otros de una caja. Muy pocos nacen de
una historia. El Potemkin es de estos.

El punto de partida fue el Slava Sadko,
diver soviético de culto y caja
inspirada en el Zodiac Olympos, una
marca ya desaparecida.

RSWC buscó un hilo conductor más
ambicioso: *El acorazado Potemkin*, la
obra maestra que Serguéi Eisenstein
rodó en 1925 y que, cien años después,
sigue siendo una de las películas más
influyentes del cine.

#pagebreak()

*LA PELÍCULA*

La tripulación del Potemkin se amotina
al descubrir que sus oficiales quieren
obligarles a comer carne podrida.

Durante el motín muere el marinero
Vakulinchuk. Su cuerpo llega a Odesa y
el pueblo se solidariza con el barco.

La respuesta zarista será una de las
escenas más famosas del cine: la
masacre de las escaleras de Odesa.

En el desenlace, el resto de la
escuadra imperial se niega a abrir
fuego contra el Potemkin, dejándolo
pasar: un motín que anuncia una
revolución mayor.

Centenario 1925-2026. No es un
reloj histórico real: es el que
pudo existir en su universo.

#pagebreak()

*EL DISEÑO*

La caja mantiene el espíritu del Sadko
y sus formas inspiradas en el Zodiac
Olympos, pero es una pieza nueva de
punta a punta.

45 mm de ancho, aunque de centro a
centro mide 43,5 mm, bastante
equilibrada en muñeca. L2L de 49 mm.

El cristal plano sobresale del
bisel apenas un milímetro.

La esfera azul lleva la marca *ЧКВС*
(cirílico de RSWC), *АВТОПОДЗАВОД*
("automático") y *ПОТЁМКИН*. Bajo la
fecha, la consigna de Lenin *МИР,
ЗЕМЛЯ, ХЛЕБ* ("paz, tierra, pan").

Trasera *oil press* bicolor con el
acorazado, el marinero revolucionario
y las escaleras de Odesa.

#pagebreak()

*ZAVOD Y VINTAGE*

El Potemkin existe en dos lecturas de
una misma caja.

*Zavod* ("fábrica" en ruso) representa
el reloj tal y como podría haber
salido de una fábrica soviética en los
años setenta, con lume blanco de
aspecto contemporáneo.

*Vintage* recrea el aspecto de un
ejemplar que hubiera sobrevivido medio
siglo de historia, con un lume tostado
que evoca el paso del tiempo.

Ambas comparten caja, cristal, bisel y
trasera grabada: solo cambia el tono
del lumen y el carácter que transmite
el conjunto en la muñeca.

#pagebreak()

*INSTRUCCIONES DE USO*

El calibre Miyota 8205 es automático:
se carga con el movimiento de la
muñeca y admite carga manual girando
la corona (unas 20-30 vueltas).

*Ajuste de fecha y día:* desenroscar
la corona; en la primera posición se
ajustan fecha y día; en la segunda,
la hora. Evita ajustar el calendario
entre las 21:00 y las 03:00.

*Corona e hermeticidad:* enrosca
siempre la corona tras el uso para
mantener los 300 m de estanqueidad.
Enjuaga con agua dulce tras el mar.

*Mantenimiento:* revisión periódica
de juntas y servicio completo cada
4-5 años.

#pagebreak()

#image("potemkin_back.jpeg", width: 100%, height: 50%, fit: "cover")

#place(top + left, dx: 5mm, dy: 42mm, box(width: 100% - 10mm, text(black, size: 6.3pt)[
Medallón *oil press* bicolor: estrella, acorazado y marinero, junto a *«ВСЯ ВЛАСТЬ
СОВЕТАМ»* ("todo el poder a los soviets").

Aro exterior: *«БРОНЕНОСЕЦ ПОТЁМКИН СЕРГЕЯ ЭЙЗЕНШТЕЙНА»* ("acorazado Potemkin de
Eisenstein") y *«САПФИРОВОЕ СТЕКЛО / 30 АТМ / 300 М»* ("zafiro / 30 atm / 300 m").
]))

#place(bottom + left, dx: 5mm, dy: -5mm, text(black, size: 7pt)[
_RSWC · Hablemos de Relojes_
])
