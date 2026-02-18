#import "../../src/lib.typ": watch_zine

#set document(author: "HdR", title: "RSWC Airliner II")
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
  image("airliner_ii_front.jpeg", width: 100%, height: 100%, fit: "cover")
  place(top + center, dy: 3mm, box(
    fill: rgb(0, 0, 0, 150),
    inset: 8pt,
    radius: 4pt,
    [
      #text(white, size: 12pt, stroke: 0.5pt + black)[*RSWC*]\ 
      #text(white, size: 10pt, stroke: 0.5pt + black)[*Airliner II*]
    ]
  ))
})
#pagebreak()

// Page 2 - Technical Specifications
*ESPECIFICACIONES TÉCNICAS*

- *Caja:* Acero 316L de 40.5 mm
- *Espesor:* 13.5 mm
- *Cristal:* Zafiro con lupa y AR
- *Bisel:* Cerámico bidireccional
- *Esfera:* Enamel verde/negro
- *Lume:* BGW-9 azul
- *Movimiento:* Hangzhou 6460 GMT
- *Hermeticidad:* 200 metros
- *Ancho asas:* 20 mm
- *Brazalete:* Jubilee
- *Edición:* 30 unidades

#pagebreak()

// Page 3 - The Story
*SEGUNDA GENERACIÓN*

Tras éxito Airliner original (92 unidades 2021), RSWC presenta segunda generación con mejoras significativas.

Salto estético 70 años evolución relojera. Uno de los GMT 
más espectaculares en su categoría.

Homenaje continuo a instrumento pilotos todas aerolíneas mundo. Icono relojería desde años cincuenta.

Limitadísima edición 30 ejemplares por ruptura stock combinación verde/negro San Martin.
#pagebreak()

// Page 4 - Design Evolution
*EVOLUCIÓN ESTÉTICA*

*Esfera Enamel:* Acabado esmaltado alta calidad. Combinación verde/negro única.

*Lupa Cyclops:* Cristal zafiro con lupa sobre fecha. AR interno incoloro. Homenaje estética clásica GMT Master.

*Bisel Cerámico:* Bidireccional cerámico negro. Mayor resistencia rayones que zafiro modelo anterior.

Calidad piezas San Martin con montaje Astar garantizan miniproyecto hacer afición.
#pagebreak()

// Page 5 - Movement and Function
*HANGZHOU 6460 GMT*

Mismo movimiento fiable Airliner original. Automático clon ETA 2836-2 GMT.

*TRUE GMT vs OFFICE GMT*

6460 es TRUE GMT: horaria salta por horas, GMT fija. Ideal viajero.

Office GMT: GMT ajustable, horaria fija. Para consultar sin viajar.

True GMT cambia hora local rápido manteniendo referencia UTC.

*BRAZALETE JUBILEE*

Cierre desplegable firmado. Acabados pulido/cepillado alternados.
#pagebreak()

// Page 6 - GMT Setup Instructions
*AJUSTE FUNCIÓN GMT*

*1. Desenroscar corona:* Girar antihorario hasta libre.

*2. Hora referencia (pos. 2):* Tirar corona máximo (2 clics). Segundero para. Girar: mueven minutero, horaria y GMT juntas. Dejar GMT en UTC/huso referencia.

*3. Ajustar solo GMT (pos. 1):* Empujar corona un clic. Girar antihorario: GMT salta horas sin mover minutero. Colocar GMT en segundo huso deseado.

*4. Hora local (pos. 1):* Girar sentido contrario: horaria salta por horas, fecha avanza/retrocede, GMT no se mueve.

*Ajuste fecha:* No tiene corrección rápida. Fecha cambia al saltar horaria cada 24h (paso 4).

*5. Cerrar:* Empujar y enroscar bien.
#pagebreak()

// Page 7 - Limited Edition and Care
*EDICIÓN LIMITADÍSIMA*

Solo 30 unidades disponibles. Ruptura stock San Martin modelo base impide ampliar producción.

Proyecto aplazado múltiples veces. Finalmente hueco agenda primavera 2023. Pequeña crudité primaveral para selectos clientes RSWC.

Modelo desaparecerá pronto catálogo San Martin. Oportunidad única.

*MANTENIMIENTO*

Carga automática: 40 horas reserva. 30 vueltas corona para carga inicial.

Hermeticidad 200m
#pagebreak()

// Page 8 - Back Cover
#block({
  image("airliner_ii_back.jpeg", width: 100%, height: 50%, fit: "cover")
})

#place(top + left, dx: 5mm, dy: 45mm, box(width: 100% - 10mm, text(black, size: 7pt)[
Trasera inspirada en un giroscopio o indicador actitud, instrumento fundamental permite pilotos volar condiciones nula visibilidad. 
]))

#place(bottom + left, dx: 5mm, dy: -5mm, text(black, size: 7pt)[
_RSWC · Hablemos de Relojes_
])
