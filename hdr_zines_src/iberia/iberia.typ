#import "../../src/lib.typ": watch_zine

#set document(author: "HdR", title: "RSWC Suite Iberia")
#set text(font: "Carlito", size: 7pt, lang: "es")

#set page("a4")

// update heading rule to show that style is preserved
#show heading.where(level: 1): hd => {
  pad(top: 2em, text(10em, align(center, hd.body)))
}

#show: watch_zine.with(
  digital: json(bytes(sys.inputs.at("digital", default: "false"))),
  draw-border: true // draw border boxes in printing mode
)

// cover

#block({
  image("iberia_front.jpeg", width: 100%, height: 100%, fit: "cover")
  place(top + center, dy: 3mm, box(
    fill: rgb(0, 0, 0, 150),
    inset: 8pt,
    radius: 4pt,
    text(white, stroke: 0.5pt + black)[
      #text(size: 12pt)[*RSWC*]\ 
      #text(size: 10pt)[*Suite Iberia*]
    ]
  ))
})#pagebreak()

*ESPECIFICACIONES TÉCNICAS*

- Caja de acero 316L, diámetro caja: 37mm, espesor: 12,0mm, lug to lug: 42mm, anchura de asas: 18mm
- Cristal de zafiro abovedado con tratamiento antirreflejos (AR) en el interior
- Calibre: Seagull ST2836, automático  con 28.800 alternancias/h
- Fecha y día
- Resistencia al agua: 100 metros
- Peso: 67,5 gramos

#pad(
  x: -5mm,  
  image("iberia_detail.jpeg", width: 100%,  height: 40%, fit: "cover")
)

#pagebreak()

*DESCRIPCIÓN DEL RELOJ*

El Suite Iberia presenta una caja de 37 milímetros de 
diámetro con acabado en acero inoxidable 316L. Su espesor 
de 11,4 milímetros mantiene proporciones armoniosas. 
Los 42 milímetros de altura lo hacen cómodo en cualquier 
muñeca.

La esfera cuenta con un patrón en malla profunda que
genera texturas visuales variables. Los índices aplicados 
presentan un corte perpendicular de 90º que actúa como 
guía para las agujas. El fechador doble integra funciones 
de fecha y día.

El cristal de zafiro abovedado con tratamiento 
antirreflejante protege la esfera. 

#pagebreak()

*ISAAC ALBÉNIZ Y LA MÚSICA*

Suite Iberia toma su nombre de la obra del compositor 
español Isaac Albéniz, alumno de Liszt y amigo de 
Fauré y Dukas. El reloj habla de música, literatura 
y paisajes andaluces.

En la trasera se encuentra grabado un epitafio de 
Federico García Lorca, constituyendo un triple homenaje:
a la casa relojera inspiradora, al músico que le da nombre 
y al poeta que selló su identidad.

Cada vez que contemplas este reloj en tu muñeca, 
contemplas una pequeña obra de arte que trasciende 
su función de marcar el tiempo.

#pagebreak()

*DETALLES CONSTRUCTIVOS*

El RSWC Suite Iberia toma como base el San Martin SN102-G, 
aprovechando su estructura y proporciones. 

Los índices aplicados con corte de noventa grados crean 
caminos de luz por donde viajan las agujas, generando una 
experiencia visual única. 
El cristal abovedado protege con elegancia, creando una 
leve curvatura que atrapa luz singular. La corona es 
suave y precisa. La correa de piel se adapta a cualquier 
estación y casa perfectamente con la estética del reloj.

#pagebreak()

*ESPÍRITU VINTAGE*

El Suite Iberia es un homenaje al King Seiko de los años 70, 
manteniendo la esencia de aquella estética que marcó una época. 
Se recoge ese carácter de un diseño histórico que muchos siguen 
apreciando hoy. 

Su construcción y proporciones buscan reproducir
con fidelidad aquel espíritu original, dando como resultado un 
reloj concebido para quienes valoran la continuidad y la 
historia en la relojería.

Un proyecto nacido del foro HdR, sencillo pero cargado de intención, 
que rescata una pieza del pasado y la trae al presente con respeto 
y coherencia.

#pagebreak()

*INSTRUCCIONES DE CUIDADO Y MANTENIMIENTO*

Ajuste de hora: Tira corona hasta la posición dos. 
Gira suavemente hasta la hora deseada.

Ajuste de fecha: Tira corona hasta la posición uno. 
Gira hacia adelante para avanzar fecha. 
*Evita cambios entre 22h y 2h.*

Ajuste de día: Tira corona posición uno. 
Gira hacia atrás para cambiar día. 
*Evita cambios entre 22h y 2h.*

#pagebreak()


#image("iberia_back.jpeg", width: 100%, height: 50%, fit: "cover")

#place(top + left, dx: 5mm, dy: 45mm, box(width: 100% - 10mm, text(black, size: 7pt)[
Trasera con epitafio de Federico García Lorca para Isaac Albéniz:

#text(size: 6pt)[
_Desde la sal de Cádiz a Granada,\ 
que erige en agua su perpetuo muro,\ 
en caballo andaluz de acento duro\ 
tu sombra gime por la luz dorada._
]
]))

#place(bottom + left, dx: 5mm, dy: -5mm, text(black, size: 7pt)[
_RSWC · Hablemos de Relojes_
])





