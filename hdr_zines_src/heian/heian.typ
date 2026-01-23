#import "../../src/lib.typ": watch_zine

#set document(author: "HdR", title: "RSWC Heian")
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
  image("heian_front.jpeg", width: 100%, height: 100%, fit: "cover")
  place(top + center, dy: 5mm, box(
    fill: rgb(0, 0, 0, 150),
    inset: 8pt,
    radius: 4pt,
    text(white, size: 20pt, stroke: 0.5pt + black)[
      *RSWC*\ 
      *Heian*
    ]
  ))
})
#pagebreak()

*ESPECIFICACIONES TÉCNICAS*
- Caja acero inoxidable 316L
- Diámetro: 40mm
- Ancho de correa: 20mm
- Cristal de zafiro con AR
  interno
- Esfera blanca "Snow White"
- Resistencia: 100 metros
- Trasera customizada RSWC
- Corona firmada
- Movimiento automático Seiko
  NH36A
- Doble calendario Kanji-Inglés
- Instant Date (cambio
  instantáneo)
- Correa de piel negra
- Hebilla de acero firmada
- Cepillado y pulido estilo
  King Seiko

#pagebreak()

*LA ÉPOCA HEIAN*

Heian-kyō, capital del Japón
entre 794 y 1185, fue el centro
cultural donde floreció el arte,
la poesía y la literatura. La
época Heian representa el triunfo
de la belleza sobre la fuerza,
del pincel sobre la espada.

El nombre significa "paz y
tranquilidad", valores que este
reloj encarna en cada detalle.

Durante estos siglos surgieron
los primeros samurais y se
desarrolló la estética japonesa
que perdura hasta hoy. El
refinamiento y la elegancia eran
las virtudes más apreciadas.

#pagebreak()

*HOMENAJE AL FORO*

Este reloj honra los inicios del
foro, nacido en 2007 como RSWF,
The Rising Sun Watch Forum, el
primer foro independiente de
relojes japoneses en español.

El Heian representa el amor por
los clásicos japoneses de diario:
King Seiko, Seikos DX, Actus,
Sportsman, Lord Marvel... Relojes
que marcaron a generaciones.

The Rising Sun Watch Company es
el foro mismo, y la compañía
sois todos vosotros que lo hacéis
posible.

#pagebreak()

*DISEÑO Y MEJORAS*

Astar produce este modelo con
movimiento Seagull y cristal
abombado. Para el Heian HdR
seleccionamos mejoras clave:

- Calibre Seiko NH36A en su
  escasa versión japonés-inglés
- Cristal de zafiro plano para
  estética King Seiko
- Combinación sutil de cepillado
  y pulido en la caja
- Color "nieve" en la esfera
- Estanqueidad 100m para uso
  polivalente GADA

Un lobo con piel de cordero:
elegante por fuera, robusto por
dentro.

#pagebreak()

*EL INSTANT DATE*

La función más especial del
Heian es el cambio instantáneo
de fecha a medianoche.

A diferencia de los mecanismos
convencionales que cambian la
fecha gradualmente durante horas,
el NH36A cambia exactamente a las
12:00. Un clic y es el nuevo día.

Esta complicación, heredada de
los grandes relojes japoneses
vintage, convierte el Heian en
algo más que un reloj de vestir.
Es un reloj RPTO-GADA: ready to
put on, go anywhere, do anything.

#pagebreak()

*INSTRUCCIONES DE USO*

Movimiento Seiko NH36A: se 
carga automáticamente con el 
movimiento. Admite carga manual 
girando la corona (20-30 
vueltas).

*Ajuste:* Desenroscar corona. 
Primer punto: cambiar fecha y 
día. Segundo punto: ajustar 
hora.

*Importante:* No cambiar fecha 
ni día entre 21:00-03:00. El 
mecanismo Instant Date está 
activo y puede dañarse.

*Mantenimiento:* Resistente 
100m. Enjuagar tras agua salada. 
Revisión estanqueidad anual si 
uso acuático. Servicio completo 
cada 4-5 años.

#pagebreak()

// back cover
#block({
  image("heian_back.jpeg", width: 100%, height: 50%, fit: "cover")
})

#place(top + left, dx: 5mm, dy: 45mm, box(width: 100% - 10mm, text(black, size: 7pt)[
La trasera roscada customizada RSWC presenta grabados con 
las especificaciones técnicas y el sello del foro. Su 
diseño rinde homenaje a los clásicos japoneses vintage 
como el King Seiko, con una estética sobria y elegante. 
La paz y tranquilidad de la época Heian, grabadas en 
acero.
]))

#place(bottom + left, dx: 5mm, dy: -5mm, text(black, size: 7pt)[
_RSWC · Hablemos de Relojes_
])
