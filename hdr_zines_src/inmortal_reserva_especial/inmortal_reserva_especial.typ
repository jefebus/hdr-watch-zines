#import "../../src/lib.typ": watch_zine

#set document(author: "HdR", title: "Sol y Sombra – Inmortal Reserva Especial")
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
  image("inmortal_reserva_especial_front.jpeg", width: 100%, height: 100%, fit: "cover")
  place(top + center, dy: 3mm, box(
    fill: rgb(0, 0, 0, 150),
    inset: 8pt,
    radius: 4pt,
    text(white, stroke: 0.5pt + black)[
      #text(size: 12pt)[*Sol y Sombra*]\ 
      #text(size: 10pt)[*Inmortal Reserva Especial*]
    ]
  ))
})#pagebreak()

*ESPECIFICACIONES TÉCNICAS*
- Caja de acero 316L acabado pulido
- Diámetro: 40mm, espesor: 14,7mm incluido cristal
- Lug to lug: 48mm, anchura de asas: 22mm
- Corona grabada de 8mm de diámetro
- Cristal de zafiro domed con AR interno
- Calibre: Seagull ST-1901 carga manual 
- Cronógrafo de cuerda manual, 21.600 VPH
- Tapa trasera roscada con cristal de zafiro
- Resistencia al agua: 50 metros
#pagebreak()

*DESCRIPCIÓN DEL RELOJ*

El Sol y Sombra Inmortal Reserva Especial es un cronógrafo 
de cuerda manual con estética ultra clásica que evoca los 
grandes cronógrafos españoles de los años 50 y 60.

Su caja pulida de 41mm y cristal de zafiro domed con efecto 
plexi envuelven una esfera color marfil con múltiples 
texturas: patrón rayos de sol central, pequeños círculos 
superpuestos y un gran patrón exterior que se esconde 
bajo la curvatura de la propia esfera.

Los índices aplicados "lacrimosa" junto con números, logo 
y estrella tridimensional aplicada componen un conjunto 
de alta complejidad visual.

#pagebreak()

*CRONÓGRAFOS AÑEJOS ESPAÑOLES*

Entre los años 50 y 60, los cronógrafos mecánicos de marcas 
como Dogma y Cauny dominaron los escaparates de las relojerías 
españolas. Eran relojes de gama media, ni caros ni baratos, 
fabricados en Suiza con movimientos de batalla.

Gracias a grandes campañas publicitarias en radio y prensa, 
lograron gran popularidad. Era lo que el español de clase 
media podía permitirse, y no sin muchísimo esfuerzo.

Con la crisis del cuarzo en los años 70 estas marcas 
desaparecieron como tantas otras. Ahora no nos queda más 
que su recuerdo.

#pagebreak()

*ÚLTIMA SERIE DEL ST-1901*

El gobierno chino decidió no suministrar más calibres 
ST-1901 a empresas occidentales, al menos no a pequeñas 
micro marcas como Sol y Sombra.

HdR consiguió en su día reservar para este proyecto un 
total de 75 calibres. No se puede ampliar esta serie 
porque ya no suministran más unidades.

Esta maravilla si no se sacaba en ese momento ya no se 
podría sacar nunca. Es la primera y última vez que 
podremos disfrutar de un cronógrafo Inmortal con el 
veterano y honorable ST-1901.

#pagebreak()

*DETALLES CONSTRUCTIVOS*

La segundera con división en cruz mantiene la esencia 
Inmortal. La aguja del crono finaliza en punta de flecha 
y las marcas 3, 6 y 9 se resaltan como antiguamente.

La estrella tridimensional aplicada es un homenaje a 
Seagull y la estrella de la Selección.

Caja pulida con pulsadores ovalados propios de cronógrafos 
añejos. Corona extraplana de 8mm para dar cuerda con 
comodidad.

#pagebreak()

*TRES ACABADOS DISPONIBLES*

Inmortal Reserva Especial se presenta en tres acabados:

Moderno (todo acero): Caja, pulsadores y corona en acero 
pulido. Máxima pureza y elegancia contemporánea.

Deportivo (mixto): Caja en acero con pulsadores y corona 
en PVD dorado. El contraste perfecto entre tradición y 
modernidad.

Clásico (todo oro): Caja, pulsadores y corona en acabado 
PVD dorado. El homenaje completo a los cronógrafos dorados 
de antaño.

Todos equipados con correa de piel negra con hebilla 
firmada Sol y Sombra.

#pagebreak()

#image("inmortal_reserva_especial_back.jpeg", width: 100%, height: 50%, fit: "cover")

#place(top + left, dx: 5mm, dy: 45mm, box(width: 100% - 10mm, text(black, size: 7pt)[
La tapa trasera roscada con cristal de zafiro plano permite admirar 
el calibre Seagull ST-1901. 
]))

#place(bottom + left, dx: 5mm, dy: -5mm, text(black, size: 7pt)[
_Sol y Sombra · Hablemos de Relojes_
])
