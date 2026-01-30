#import "../../src/lib.typ": watch_zine

#set document(author: "HdR", title: "RSWC Goldmaster")
#set text(font: "Carlito", size: 7pt, lang: "es")
#set page("a4")

#show heading.where(level: 1): hd => {
  pad(top: 2em, text(10em, align(center, hd.body)))
}

#show: watch_zine.with(
  digital: json(bytes(sys.inputs.at("digital", default: "false"))),
  draw-border: true
)

// Page 1 - Cover
#block({
  image("goldmaster_front.jpeg", width: 100%, height: 100%, fit: "cover")
  place(top + center, dy: 10mm, box(
    fill: rgb(0, 0, 0, 150),
    inset: 8pt,
    radius: 4pt,
    [
      #text(white, size: 20pt, stroke: 0.5pt + black)[*RSWC*]\
      #text(white, size: 16pt, stroke: 0.5pt + black)[*Goldmaster*]
    ]
  ))
})
#pagebreak()

// Page 2 - Especificaciones
*ESPECIFICACIONES TÉCNICAS*

*Caja*: Acero 316L, 41mm
sin contar corona.
Impermeable 200 metros.

*Movimiento*: Seiko NH35
Automático, 21 rubíes.
Cuerda manual opcional.

*Cristal*: Zafiro plano
sin tratamiento AR.

*Dial*: Deep Black o British
Green. Super-Luminova verde
en índices y agujas.

*Bisel*: Cerámico unidireccional
con perla luminiscente verde.

*Brazalete*: Acero con cierre
de seguridad grabado RSWC.
Incluye 2 correas NATO.
#pagebreak()

// Page 3 - El Gentleman
*EL GENTLEMAN INGLÉS*

Londres, años 60. Guerra Fría.
El mundo dividido entre dos
superpotencias.

Surge la figura del gentleman
impasible a las modas. Estudió
en Oxford. Domina idiomas y
artes marciales. Fue el mejor
tirador en el servicio militar.

Viaja constantemente. Se aloja
en los mejores hoteles. Comparte
mesa con bellas mujeres en los
restaurantes más exclusivos.

Conduce deportivos británicos
lacados en British Racing Green.
Porque él es muy patriota y no
compra marcas extranjeras.
#pagebreak()

// Page 4 - Estilo de vida
*UN HOMBRE DE ACCIÓN*

Deportista nato. Le gustan los
deportes acuáticos, el golf y
los casinos de Monte Carlo,
donde apuesta grandes fortunas.

Su trabajo? Nadie lo sabe. Hijo
de familia noble con escaños
en el Parlamento desde hace
generaciones. Castillos en
Escocia y cajas fuertes llenas
de oro en los bancos de Londres.

Pero trabaja en la sombra,
solucionando asuntos turbios
de gobiernos enfrentados.
Sorteando peligros constantes.

Todo con un solo objetivo:
disfrutar al máximo de los
placeres de la vida. Él es
el rey del mambo. El Goldmaster.
#pagebreak()

// Page 5 - British Racing Green
*BRITISH RACING GREEN*

El color nacional de carreras
británico. Desde los Aston Martin
DB5 hasta los Jaguar E-Type.

Un verde oscuro que representa
la tradición automovilística
británica. El mismo tono que
llevaban los coches de carrera
en circuitos legendarios.

Stirling Moss, Jackie Stewart,
Jim Clark. Pilotos que hicieron
historia con este color.

El Goldmaster British Green 75
rinde homenaje a esta tradición.
Edición especial limitada a 75
unidades para los participantes
de la conjunta fallida G1-G2.

Un gesto de HdR hacia su
comunidad más fiel.
#pagebreak()

// Page 6 - Dos versiones
*GOLDMASTER BLACK & GREEN*

Dos versiones del mismo reloj.
Ambas con la misma calidad de
fabricación Astar.

*Black Edition*: Dial negro
profundo. Luminova verde para
visibilidad nocturna. El reloj
del submarinista profesional
usado por el gentleman.

*British Green 75*: Dial verde
racing. Edición limitada
exclusiva. Incluye NATO British
Green y NATO clásica negra-gris.

Ambas versiones: caja 41mm,
bisel cerámico, corona roscada
y firmada, movimiento NH35.

#pagebreak()

// Page 7 - Instrucciones
*INSTRUCCIONES DE USO*

*Movimiento NH35 automático*:
Se carga con el movimiento
de la muñeca. También admite
cuerda manual girando la corona
en posición normal.

*Funciones*: Posición 1 (normal)
para cuerda manual. Posición 2
(primer click) para cambio rápido
de fecha. Posición 3 (segundo
click) para ajuste de hora.

*Bisel*: Unidireccional. Gira
solo en sentido antihorario para
marcar tiempos de inmersión.

*Mantenimiento*: Revisar
estanqueidad cada 2 años.
No operar corona bajo el agua.
Enjuagar con agua dulce tras
uso en mar. Limpiar con paño.
#pagebreak()

// Page 8 - Back Cover
#block({
  image("goldmaster_back.jpeg", width: 100%, height: 50%, fit: "cover")
})

#place(top + left, dx: 5mm, dy: 45mm, box(width: 100% - 10mm, text(black, size: 7pt)[
*RSWC Goldmaster*

Homenaje al reloj del gentleman. Un reloj submarinista profesional para
el hombre de acción británico de los años 60.
]))

#place(bottom + left, dx: 5mm, dy: -5mm, text(black, size: 7pt)[
_RSWC · Hablemos de Relojes_
])
