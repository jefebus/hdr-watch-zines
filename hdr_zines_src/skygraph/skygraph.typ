#import "../../src/lib.typ": watch_zine

#set document(author: "HdR", title: "RSWC Skygraph")
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
  image("skygraph_front.jpeg", width: 100%, height: 100%, fit: "cover")
  place(top + center, dy: 3mm, box(
    fill: rgb(0, 0, 0, 150),
    inset: 8pt,
    radius: 4pt,
    text(white, stroke: 0.5pt + black)[
      #text(size: 12pt)[*RSWC*]\ 
      #text(size: 10pt)[*Skygraph*]
    ]
  ))
})#pagebreak()

// Page 2 - Specifications
*ESPECIFICACIONES TÉCNICAS*

Caja acero 316L Swiss Grade, 
acabado brushed y pulido. 42mm 
sin coronas, 49mm lug to lug,  
16mm altura. Ancho asas 20mm. 
Dobles coronas roscadas 
firmadas. Resistencia 70m.

Bisel exterior aluminio. Bisel 
interno bidireccional, corona 
a las 9. Cristal zafiro 3mm 
con AR triple capa. Agujas e 
índices C3 Swiss. Doble 
datario negro custom.

Movimiento Peacock SL-4601, 
cronógrafo automático. 28.800 
VPH, 28 rubíes, 45h reserva. 
Customizado RSWC sin segundera 
a las 9. Brazalete 316L, cierre 
firmado 5 puntos ajuste fino.

#pagebreak()

// Page 3 - History
*CRÓNICAS DEL ESPACIO*

El Seiko 6139-6005 amarillo 
del coronel William Pogue en 
la misión Skylab 4 (1973) es 
legendario: primer cronógrafo 
automático en el espacio.

Junto al Movado Datachron HS 
360 del comandante Gerald P. 
Carr (con calibre El Primero), 
ambos relojes compartieron el 
honor de ser los primeros 
automáticos en órbita.

Pogue usó su Seiko para 
mediciones críticas como el 
encendido de propulsores, 
usando el bisel giratorio 
interno, característica única 
entre los relojes a bordo. Un 
reloj de confianza en el vacío 
del espacio.

#pagebreak()

// Page 4 - The Four Variants
*CUATRO VARIANTES HISTÓRICAS*

*Pogue (Amarillo):* El 
original. Dial sunray amarillo 
intenso, edición limitada 200 
unidades. Vendida en 58 
minutos. Color espacial.

*Cevert (Azul):* Precioso azul 
sunray intenso. Inspirado en 
el piloto F1 François Cevert 
y Nick Mason. Hipnótico.

*Silver Grey:* Combinación 
sublime. Deportividad del 
bisel con austeridad de la 
esfera. Clasicismo y rareza.

*Space Cowboy:* Edición 
especial. Inspirado en rara 
tirada JDM de 1972. Dial y 
agujas únicos. El más 
deportivo.

Comparten caja y movimiento. 
Difieren en dial, bisel y 
agujas. Serie histórica 
completa.

#pagebreak()

// Page 5 - The Movement
*EL MOVIMIENTO PERSONALIZADO*

El original Seiko 6139 ya no 
se fabrica. Peacock, reputado 
fabricante, modificó 200 
calibres SL-4601 (base 
Valjoux) especialmente para 
nosotros.

Eliminaron la segundera a las 
9 y fabricaron discos de 
calendario en negro exclusivos. 
Peacock es reacio a 
personalizaciones, pero 
insistimos: sin estas 
modificaciones no habría 
proyecto.

El resultado: un cronógrafo 
automático de 28.800 VPH, 28 
rubíes, 45 horas de reserva, 
que captura la esencia del 
original Pogue. Customizado 
para la RSWC.

#pagebreak()

// Page 6 - Credits
*CRÉDITOS Y DESARROLLO*

Proyecto desarrollado por 
el equipo de 
moderación HdR. Cuatro meses de desarrollo: 50 
cambios de diseño hasta el 
resultado final. El fabricante Astar mostró gran 
predisposición y flexibilidad 
técnica.

Cristal con chaflán 
sobresaliente para el toque 
setentero. Brazalete mejorado: 
un solo tornillo largo por 
eslabón, cinco puntos de micro 
ajuste.

Corona del bisel roscada (a 
las 9 y 3) para evitar giros 
accidentales. Pulsadores ahora 
integrados. Cada detalle 
cuidado.

Un homenaje al primer 
cronógrafo automático en el 
espacio.

#pagebreak()

// Page 7 - Usage Instructions
*INSTRUCCIONES DE USO*

*Carga:* Movimiento automático, 
se carga con el movimiento de 
la muñeca. Admite carga manual 
girando la corona (roscada).

*Cronógrafo:* Pulsador superior 
start/stop. Pulsador inferior 
reset (sólo con cronógrafo 
parado).

*Ajustes:* Desenroscar corona 
a las 3. Primer punto: cambio 
rápido de fecha (girar hacia 
adelante) y día (hacia atrás). 
Segundo punto: ajustar hora.

*Bisel interno:* Desenroscar 
corona a las 9, tirar y girar. 
Bidireccional para cálculos.

*Mantenimiento:* Resistente 
100m. Enjuagar tras agua 
salada. Revisión anual de 
juntas. Servicio cada 4-5 años.

#pagebreak()

// Page 8 - Back Cover
#block({
  image("skygraph_back.jpeg", width: 100%, height: 50%, fit: "cover")
})

#place(top + left, dx: 5mm, dy: 45mm, box(width: 100% - 10mm, text(black, size: 7pt)[
La trasera roscada en acero reproduce fielmente el diseño 
del Seiko 6139 original. Un homenaje al legendario cronógrafo espacial 
de Pogue. 
]))

#place(bottom + left, dx: 5mm, dy: -5mm, text(black, size: 7pt)[
_RSWC · Hablemos de Relojes_
])