#import "../../src/lib.typ": watch_zine

#set document(author: "HdR", title: "RSWC The Legacy")
#set text(font: "Carlito", size: 7pt, lang: "es")
#set page("a4")

#show heading.where(level: 1): hd => {
  pad(top: 2em, text(10em, align(center, hd.body)))
}

// Paletas muestreadas de las imágenes de referencia de gasparacha
#let gris-texto = rgb("#EFE9E3")   // p387_1, cuerpo
#let gris-titulo = rgb("#F5DED4")  // p387_1, título
#let oro-texto = rgb("#F0DEAF")    // p412_2, cuerpo
#let oro-titulo = rgb("#EFD293")   // p237_1, título dorado

// Página de contenido (2-7) con imagen de fondo a sangre en todo el panel (45 x 80 mm).
// El panel tiene 5 mm de margen interior: por eso el fondo se coloca en (-5mm, -5mm).
// Los fondos se generan con make_backgrounds.py (carpeta bg/).
// estilo: "gris" (texto claro) o "azul" (texto dorado). velo: relleno opcional, p. ej. rgb(0,0,0,90).
// Todo el estilo vive dentro de la función: un #set/#show suelto entre páginas rompería
// el reparto en 8 paneles de watch_zine.
#let fondo(src, estilo: "gris", velo: none, body) = {
  let (txt, tit) = if estilo == "azul" { (oro-texto, oro-titulo) } else { (gris-texto, gris-titulo) }
  place(top + left, dx: -5mm, dy: -5mm,
    image(src, width: 45mm, height: 80mm, fit: "cover"))
  if velo != none {
    place(top + left, dx: -5mm, dy: -5mm,
      rect(width: 45mm, height: 80mm, fill: velo, stroke: none))
  }
  set text(fill: txt)
  show strong: set text(fill: tit)
  set list(marker: text(fill: tit)[•])
  body
}

#show: watch_zine.with(
  digital: json(bytes(sys.inputs.at("digital", default: "false"))),
  draw-border: true
)

///////////////////////////////////////////////////////////////////////////////
// 1) PORTADA
///////////////////////////////////////////////////////////////////////////////
#block({
  image("the_legacy_front.jpeg", width: 100%, height: 100%, fit: "cover")
  place(top + center, dy: 3mm, box(
    fill: rgb(0, 0, 0, 150),
    inset: 8pt,
    radius: 4pt,
    [
      #text(white, size: 12pt, stroke: 0.5pt + black)[*RSWC*]\ 
      #text(white, size: 10pt, stroke: 0.5pt + black)[*The Legacy*]
    ]
  ))
})
#pagebreak()

///////////////////////////////////////////////////////////////////////////////
// 2) ESPECIFICACIONES TÉCNICAS · fondo azul (plano Bleu Marine)
///////////////////////////////////////////////////////////////////////////////
#fondo("bg/the_legacy_bg_p2.jpeg", estilo: "azul")[
*ESPECIFICACIONES TÉCNICAS*

- Caja de acero, Ø 41,5 mm
- Lug to lug: 48,5 mm
- Grosor: 16 mm (con cristal)
- Corona a rosca a las 6, Ø 8,5 mm
- Sistema Flexo-Matic de protección de la corona
- Hermeticidad: 200 m / 660 ft
- Cristal de zafiro super domed
- Esfera sándwich AFTERGLOW con acabado granulado
- Fecha a las 3
- Brazalete de malla
- Automático: Sellita SW200 o PT5000
- Trasera barroca con grabado oil press en relieve
- Edición limitada a 200 unidades
- Versiones: Original y Bleu Marine Nationale
]
#pagebreak()

///////////////////////////////////////////////////////////////////////////////
// 3) HISTORIA · fondo gris (galeón en la tormenta)
///////////////////////////////////////////////////////////////////////////////
#fondo("bg/the_legacy_bg_p3.jpeg", estilo: "gris")[
*EL LEGADO DEL MAR OCÉANO*

En las aguas del Mar Océano yacen, desde hace más de cuatro siglos, los galeones de Su Majestad, cargados de oro, plata y riquezas de las Indias.

Bajo el reinado de Felipe IV (1621–1665), no fueron pocos los galeones que se perdieron con sus cargas, como el Nuestra Señora del Calvario, que en 1643 zozobró en recia tormenta.

En los años sesenta y setenta surgieron las primeras campañas de arqueología submarina. Cada inmersión exigía una confianza absoluta en los instrumentos.

_En las profundidades, cada segundo cuenta._
]
#pagebreak()

///////////////////////////////////////////////////////////////////////////////
// 4) CONSTRUCCIÓN · fondo gris (cámara de presión)
///////////////////////////////////////////////////////////////////////////////
#fondo("bg/the_legacy_bg_p4.jpeg", estilo: "gris")[
*BAJO PRESIÓN*

*Corona a las 6.* Sobredimensionada, Ø 8,5 mm, diseñada para un manejo seguro y preciso, incluso con guantes de buceo.

*Flexo-Matic.* La unión inferior de la correa protege la corona, la resguarda de golpes y evita su desenroscado accidental.

*AFTERGLOW.* Una esfera en distintos niveles, donde números e índices emergen desde una base luminiscente. La luz parece surgir de su interior.

*Zafiro super domed.* El zafiro con más curvatura que el fabricante puede hacer: el mejor domed realizado hasta la fecha.
]
#pagebreak()

///////////////////////////////////////////////////////////////////////////////
// 5) DOS VARIANTES · fondo azul (Original / Bleu Marine)
///////////////////////////////////////////////////////////////////////////////
#fondo("bg/the_legacy_bg_p5.jpeg", estilo: "azul")[
*DOS VARIANTES*

*Original.* Esfera negra granulada con numerales 12-9-6 e índices de barra con lume verde claro. Bisel negro con puntos luminosos y triángulo.

*Bleu Marine Nationale.* Esfera azul marino granulada con lume vintage y doble barra a las 12. Bisel de buceo azul graduado 15-30-45.

Ambas con fecha roja a las 3, esfera AFTERGLOW y sistema Flexo-Matic.

Una esfera sobria, robusta y funcional, pensada para durar y con la personalidad de los grandes relojes de buceo de los años sesenta.
]
#pagebreak()

///////////////////////////////////////////////////////////////////////////////
// 6) DOS CALIBRES · fondo azul (SW200 / PT5000)
///////////////////////////////////////////////////////////////////////////////
#fondo("bg/the_legacy_bg_p6.jpeg", estilo: "azul")[
*DOS CALIBRES DISPONIBLES*

Sellita SW200-1 y PT5000 comparten arquitectura y dimensiones (Ø 25,6 mm, 4,6 mm de altura): ambos se integran en la misma caja sin modificaciones.

- *Sellita SW200-1* (Suiza): 26 rubíes, 28.800 a/h (4 Hz), reserva de marcha de 38 h.
- *PT5000* (China): 25 rubíes, 28.800 a/h (4 Hz), reserva de marcha de aprox. 38 h.

Ambos: carga automática y manual, parada de segundero (_hacking_) y fecha a las 3 con corrección rápida.
]
#pagebreak()

///////////////////////////////////////////////////////////////////////////////
// 7) FONDO DE CAJA · fondo gris (trasera PT5000)
///////////////////////////////////////////////////////////////////////////////
#fondo("bg/the_legacy_bg_p7.jpeg", estilo: "gris")[
*FONDO DE CAJA*

Fondo de acero grabado en relieve _oil press_, de estilo barroco, en contraste con la sobriedad técnica de la esfera.

- Medallón dorado con las armas de Felipe IV, fechado en 1640.
- Leyenda: PHILIPPVS · IIII · HISPANIARVM · REX.
- Cuatro querubines con trompetas enmarcan el medallón.
- Cartela superior: calibre montado, SW200 o PT5000.
- Cartela inferior: VNVM EX DVCENTIS, «uno de doscientos»: edición limitada de 200 unidades.
- Numeración individual I/CC grabada en cada fondo.
]
#pagebreak()

///////////////////////////////////////////////////////////////////////////////
// 8) CONTRAPORTADA
///////////////////////////////////////////////////////////////////////////////
#block({
  image("the_legacy_back.jpeg", width: 100%, height: 50%, fit: "cover")
})

#place(top + left, dx: 5mm, dy: 42mm, box(width: 100% - 10mm, text(black, size: 7pt)[
  #set par(spacing: 0.8em)
  Trasera barroca con un escudo de oro de Felipe IV en grabado _oil press_ en relieve y la leyenda:

  #align(center, text(tracking: 0.3pt)[
    1640 · #text(font: ("Carlito", "DejaVu Sans"))[✠] PHILIPPVS · IIII ·\
    HISPANIARVM · REX
  ])

  *VNVM EX DVCENTIS*, «uno de doscientos»: edición limitada a 200 unidades, cada una con su inscripción personalizada I/CC.
]))

#place(bottom + left, dx: 5mm, dy: -5mm, text(black, size: 7pt)[
_RSWC · Hablemos de Relojes_
])
