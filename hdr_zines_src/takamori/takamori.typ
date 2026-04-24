#import "../../src/lib.typ": watch_zine

#set document(author: "HdR", title: "RSWC Takamori")
#set text(font: "Carlito", size: 7pt, lang: "es")
#set page("a4")

#show heading.where(level: 1): hd => {
  pad(top: 2em, text(10em, align(center, hd.body)))
}

#show: watch_zine.with(
  digital: json(bytes(sys.inputs.at("digital", default: "false"))),
  draw-border: true
)

///////////////////////////////////////////////////////////////////////////////
// 1) PORTADA
///////////////////////////////////////////////////////////////////////////////
#block({
  image("takamori_front.jpeg", width: 100%, height: 100%, fit: "cover")
  place(top + center, dy: 3mm, box(
    fill: rgb(0, 0, 0, 150),
    inset: 8pt,
    radius: 4pt,
    text(white, stroke: 0.5pt + black)[
      #text(size: 12pt)[*RSWC*]\ 
      #text(size: 10pt)[*Takamori*]
    ]
  ))
})#pagebreak()

///////////////////////////////////////////////////////////////////////////////
// 2) ESPECIFICACIONES TÉCNICAS
///////////////////////////////////////////////////////////////////////////////
*ESPECIFICACIONES TÉCNICAS*

- Caja: acero 316L, 43,8 mm
- Lug to lug: 48 mm
- Grosor: 11,8 mm
- Ancho brazalete: 22/20 mm
- Corona roscada RSWC, 6 mm
- Bisel: acero o PVD según versión
- Inserto cerámico negro, BGW9
- Esfera: 30,5 mm, marcadores
  aplicados con BGW9
- Calibre: Miyota 9015
  28.800 vph · 42 h reserva
- Cristal zafiro con AR interno
- Fechador con lupa (opcional)
- Brazalete acero 316L con ajuste
  fino de 5 puntos. Endlinks hembra
- Resistencia: 200 metros
- Tapa grabada al ácido, numerada

#pagebreak()

///////////////////////////////////////////////////////////////////////////////
// 3) EL ÚLTIMO SAMURÁI
///////////////////////////////////////////////////////////////////////////////
*EL ÚLTIMO SAMURÁI*

Saigō Takamori nació en Satsuma
en 1828. Fue pieza clave de la
Restauración Meiji (1868), al
liderar las fuerzas que derrocaron
al shogunato Tokugawa.

Irónicamente, al restaurar el
poder del Emperador, firmó la
sentencia de muerte de su propia
clase social: los samuráis.

Las reformas Meiji abolieron
los dominios feudales, prohibieron
portar la katana (Edicto Haitōrei,
1876) y eliminaron los privilegios
de la casta guerrera.

Alienado por la pérdida de los
valores del Bushidō, Saigō
renunció a su cargo y regresó
a Kagoshima.

#pagebreak()

///////////////////////////////////////////////////////////////////////////////
// 4) LA REBELIÓN DE SATSUMA
///////////////////////////////////////////////////////////////////////////////
*LA REBELIÓN DE SATSUMA*

En enero de 1877 el gobierno
intentó incautar los arsenales
de Kagoshima. Saigō asumió el
mando de 40.000 hombres.

Fue un choque de épocas: los
rebeldes mantenían el espíritu
del Bushidō, mientras el Ejército
Imperial contaba con 70.000
soldados, artillería moderna
y logística superior.

La batalla culminó en Shiroyama.
Saigō lideró una carga final
a caballo, luchando hasta el
último aliento. Su muerte en
combate lo convirtió en leyenda.

El gobierno lo indultó en 1889.
Su estatua en el Parque Ueno
de Tokio lo recuerda como
héroe trágico del Japón.

#pagebreak()

///////////////////////////////////////////////////////////////////////////////
// 5) LAS CINCO ESFERAS
///////////////////////////////////////////////////////////////////////////////
*CINCO ESFERAS, CINCO ALMAS*

*Murasaki:* Púrpura imperial,
reservado a la nobleza japonesa
desde el periodo Heian. Rayos
de sol esmaltados con degradado.

*Aiiro:* Índigo profundo, el
"Azul Japón". Color de la
armadura samurái, símbolo de
victoria, pureza y protección.

*Akoya:* Madreperla iridiscente
de la ostra japonesa Pinctada
fucata. No habrá dos Takamori
Akoya idénticos.

*Tsukimi:* Full lumen. Homenaje
a la luna llena de otoño y la
muerte de Saigō en vísperas
del festival lunar.

*Bushidō:* Rojo sangre y
sacrificio. El color sagrado
del coraje samurái y la lealtad
inquebrantable al daimyo.

#pagebreak()

///////////////////////////////////////////////////////////////////////////////
// 6) EL ESPÍRITU DEL BUSHIDŌ
///////////////////////////////////////////////////////////////////////////////
*EL ESPÍRITU DEL BUSHIDŌ*

El Bushidō, "camino del guerrero",
rigió la vida de los samuráis.
Sus siete virtudes fundamentales:

- *Gi* (義) Justicia
- *Yū* (勇) Coraje
- *Jin* (仁) Benevolencia
- *Rei* (礼) Respeto
- *Makoto* (誠) Honestidad
- *Meiyo* (名誉) Honor
- *Chūgi* (忠義) Lealtad

El samurái debía mantener la
calma incluso en el caos,
priorizando el deber sobre
el deseo personal.

La tapa trasera lleva grabada
la leyenda de Saigō Takamori:
"Revere Heaven, love mankind"
(Reverencia al Cielo, ama a
la humanidad).

#pagebreak()

///////////////////////////////////////////////////////////////////////////////
// 7) INSTRUCCIONES DE USO
///////////////////////////////////////////////////////////////////////////////
*INSTRUCCIONES DE USO*

Miyota 9015 automático: se carga
con el movimiento de muñeca.
Admite carga manual girando
la corona (20–30 vueltas).

*Ajuste:* desenroscar corona.
Posición 1: cambiar fecha.
Posición 2: ajustar hora.
No ajustar fecha entre
las 21:00 y las 03:00.

*Bisel:* gira solo en sentido
antihorario. Alinear triángulo
con minutero para medir tiempos
de inmersión.

*Mantenimiento:* tras agua
salada, enjuagar con agua dulce
y secar. Revisar estanqueidad
anualmente si se usa en
inmersión. Servicio completo
recomendado cada 4–5 años.

#pagebreak()

///////////////////////////////////////////////////////////////////////////////
// 8) CONTRAPORTADA
///////////////////////////////////////////////////////////////////////////////
#block({
  image("takamori_back.jpeg", width: 100%, height: 50%, fit: "cover")
})

#place(top + left, dx: 5mm, dy: 45mm, box(width: 100% - 10mm, text(black, size: 7pt)[
19º Aniversario de HdR. Homenaje a Saigō Takamori, 
el último samurái. 

Tapa grabada al ácido con lema "Revere Heaven, love mankind". Numerada según
la serie de cada color.
]))

#place(bottom + left, dx: 5mm, dy: -5mm, text(black, size: 7pt)[
_RSWC · Hablemos de Relojes_
])
