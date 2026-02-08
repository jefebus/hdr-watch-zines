#import "../../src/lib.typ": watch_zine

#set document(
  author: "HdR · RSWC",
  title: "RSWC Kaiju · Bestias extrañas"
)

#set document(author: "HdR", title: "Apocalypse Now · Homenaje al Seiko 6105-8100")
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
  image("apocalypse_now_front.jpeg", width: 100%, height: 100%, fit: "cover")
  place(top + center, dy: 6mm, box(
    text(white, stroke: 0.6pt + black)[
      #text(size: 22pt)[*APOCALYPSE NOW*]\\
      #text(size: 15pt)[*Homenaje al 6105*]
    ]
  ))
})
#pagebreak()

///////////////////////////////////////////////////////////////////////////////
// 2) ESPECIFICACIONES (solo lo respaldado por hilos + lo visible en fotos)
///////////////////////////////////////////////////////////////////////////////
*ESPECIFICACIONES TÉCNICAS*

- Concepto: homenaje al Seiko 6105-8100, apodado “Apocalypse Now” 
- Diámetro de caja: 44 mm (sin corona).
- Grosor: 13,5 mm. 
- Ancho entre asas: 20 mm (en el original, 19 mm).
- Bisel: unidireccional, 120 clics; inserto cerámico y “full lume”.
- Cristal: zafiro con AR interior (tinte azulado).
- Corona: roscada a las 4, protegida por el característico “shroud” (cubrecorona).
- Movimiento: Seiko/SII NH35 , 3 Hz, parada de segundero y carga manual.
- Hermeticidad: “WATER 200m RESIST”.  
- Brazalete: se entrega con armis metálico.

#pagebreak()

///////////////////////////////////////////////////////////////////////////////
// 3) EL ICONO: UN RELOJ EN LA GUERRA (CINE)
///////////////////////////////////////////////////////////////////////////////
*UN RELOJ QUE SE VOLVIÓ CINE*

Hay relojes que nacen para medir el tiempo… y otros que acaban midiendo una época.
El Seiko 6105-8100 se ganó el apodo de *Apocalypse Now* por aparecer en la película
homónima en la muñeca del Capitán Willard, interpretado por Martin Sheen. 

Ese detalle —casi casual— lo convirtió en un icono: un diver con personalidad brutal,
asociado para siempre a un viaje río arriba, calor, barro, tensión y silencio.

Este homenaje de HdR no pretende “copiar” un mito: pretende invocarlo.

#pagebreak()

///////////////////////////////////////////////////////////////////////////////
// 4) DISEÑO 6105: SHROUD, CORONA A LAS 4 Y PRESENCIA
///////////////////////////////////////////////////////////////////////////////
*EL ADN DEL 6105*

La caja “tortuga” del 6105 es inconfundible por su cubrecorona: una extensión
de la propia caja que abraza la corona a las 4. En este homenaje, esa pieza
sigue siendo el rasgo más característico del conjunto. 

San Martin ajusta la geometría: estiliza el cierre hacia las garras para que
se vea menos “cabezón”, y adopta 20 mm entre asas para facilitar el juego de correas.

Resultado: un reloj grande en medidas, pero más amable en muñeca de lo que parece.

#pagebreak()

///////////////////////////////////////////////////////////////////////////////
// 5) HERRAMIENTA MODERNA: BISEL CERÁMICO, ZAFIRO Y LUME
///////////////////////////////////////////////////////////////////////////////
*ACTUALIZACIÓN SIN TRAICIÓN*

El homenaje introduce mejoras contemporáneas sin perder el lenguaje original:
inserto cerámico y, además, completamente luminoso (“full lume”). 

El cristal pasa a zafiro, con antirreflejos interior y un ligero tinte azulado.

Son decisiones que no buscan lujo, sino utilidad: legibilidad, resistencia y
sensación de herramienta.

#pagebreak()

///////////////////////////////////////////////////////////////////////////////
// 6) EL MOTOR: NH35 Y FILOSOFÍA DE USO
///////////////////////////////////////////////////////////////////////////////
*UN MOVIMIENTO PARA DURAR*

En el interior late un NH35 (SII), equivalente al 4R35: un automático fiable,
con parada de segundero y carga manual. 

Es el tipo de calibre que no pide protagonismo: trabaja.
Y en un diver inspirado en un reloj de guerra y cine, esa es la virtud.

#pagebreak()

///////////////////////////////////////////////////////////////////////////////
// 7) IDENTIDAD HdR: TRASERA, HUEYS Y LA FRASE
///////////////////////////////////////////////////////////////////////////////
*HdR EN LOS DETALLES*

Este proyecto se planteó con sello propio: logo HdR en corona, y una trasera
personalizada con un vaciado/escena y el guiño a los helicópteros Huey, citados
como parte del diseño del homenaje. 

La trasera remata con una de las frases más recordadas:  
“I love the smell of napalm in the morning.” 

No es solo decoración: es narrativa. Un reloj que cuenta una historia sin decirla.

#pagebreak()

///////////////////////////////////////////////////////////////////////////////
// 8) CONTRAPORTADA
///////////////////////////////////////////////////////////////////////////////
#image("apocalypse_now_back.jpeg", width: 100%, height: 60%, fit: "cover")

#place(top + left, dx: 5mm, dy: 55mm, box(width: 100% - 10mm, text(black, size: 7pt)[
*Apocalypse Now*  

"I love the smell of napalm in the morning".
Homenaje al Seiko 6105-8100.  
Cine, herramienta y mito.
]))

#place(bottom + left, dx: 5mm, dy: -5mm, text(black, size: 7pt)[
_Sol y Sombra · Hablemos de Relojes_
])
