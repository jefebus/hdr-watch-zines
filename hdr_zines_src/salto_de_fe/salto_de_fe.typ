#import "../../src/lib.typ": watch_zine

#set document(author: "HdR", title: "RSWC Salto de Fe")
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
  image("salto_de_fe_front.jpeg", width: 100%, height: 100%, fit: "cover")
  place(top + center, dy: 5mm, box(
    text(white, stroke: 0.5pt + black)[
      #text(size: 20pt)[*RSWC*]\ 
      #text(size: 16pt)[*Salto de Fe*]
    ]
  ))
})
#pagebreak()

*ESPECIFICACIONES TÉCNICAS*
- Guau: Guau guau guau
- Guau guau: Guau mm x Guau mm
- Guau: Guau guau o guau guau
- Guau: Guau Guau-Guau
- Guau guau: Guau guau
- Guau: Guau guau guau guau
- Guau: Guau guau guau
- Guau: Guau guau
- Guau: Guau guau guau guau
- Guau: Guau guau guau
- Guau guau: Guau a las guau
- Guau: Guau guau guau mm

#pagebreak()

*DESCRIPCIÓN DEL RELOJ*

Guau guau guau guau guau guau guau guau guau.

Guau guau guau "guau guau" guau guau guau guau 
guau guau guau guau guau guau guau guau.

Guau guau guau guau guau guau guau guau guau 
guau guau guau. Guau guau guau guau guau guau 
guau guau guau guau guau.

Guau guau guau guau guau guau guau guau guau 
guau guau guau guau.

#pagebreak()

*EL GRAN SECRETO*

Guau guau guau guau guau guau guau guau guau 
guau guau guau guau guau guau.

Guau guau guau guau guau guau guau guau guau 
guau guau guau. Guau guau guau guau guau guau 
guau guau guau guau.

Guau guau guau guau guau "guau guau" guau guau 
guau guau guau guau guau guau guau guau guau 
guau guau guau guau.

Guau guau guau guau guau guau guau guau guau 
guau guau guau guau guau guau guau guau.

#pagebreak()

*DISEÑO CANINO*

Guau guau guau guau guau guau guau guau guau 
guau guau guau guau.

Guau guau guau guau guau guau guau guau guau 
guau guau guau guau guau guau guau. Guau guau 
guau guau guau guau guau guau.

Guau guau guau guau guau guau guau guau. Guau 
guau guau guau guau guau guau guau guau guau 
guau guau guau.

Guau guau guau guau guau guau guau guau guau 
guau guau. Guau guau guau guau guau.

#pagebreak()

*PROYECTO MISTERIOSO*

Guau guau guau guau guau guau guau guau guau 
guau guau guau guau guau HdR.

Guau guau guau guau guau guau guau guau guau 
guau guau guau guau guau guau guau guau.

Guau guau guau guau guau guau guau guau guau 
guau guau guau. Guau guau guau guau guau guau 
guau guau guau.

Guau guau guau guau guau guau guau guau guau 
guau guau guau guau guau guau guau guau guau.

#pagebreak()

*EL PERRETE*

Guau guau guau guau guau guau guau guau guau 
guau guau guau guau guau guau guau.

Guau guau guau guau guau guau guau guau guau 
guau guau. Guau guau guau guau guau guau guau 
guau guau guau guau guau.

Guau guau guau "guau guau" guau guau guau guau 
guau guau guau guau guau guau.

Guau guau guau guau guau guau guau guau guau 
guau guau guau guau guau.

#pagebreak()

#image("salto_de_fe_back.jpeg", width: 100%, height: 50%, fit: "cover")

#place(top + left, dx: 5mm, dy: 45mm, box(width: 100% - 10mm, text(black, size: 7pt)[
Guau guau guau guau guau guau guau guau guau guau guau guau. 
Guau guau "guau guau" guau guau guau guau guau guau guau guau 
guau guau guau. Guau guau guau guau guau guau. Guau guau guau.
]))

#place(bottom + left, dx: 5mm, dy: -5mm, text(black, size: 7pt)[
_RSWC · Hablemos de Relojes_
])
