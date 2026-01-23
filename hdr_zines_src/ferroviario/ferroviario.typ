#import "../../src/lib.typ": watch_zine

#set document(author: "HdR", title: "Ferroviario")
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
  image("ferroviario_front.jpeg", width: 100%, height: 100%, fit: "cover")
  place(top + center, dy: 5mm, box(
    text(white, stroke: 0.5pt + black)[
      #text(size: 24pt)[*Ferroviario*]
    ]
  ))
})
#pagebreak()

*ESPECIFICACIONES TÉCNICAS*
- Marca: Caminos de Hierro de La Habana
- Caja de acero 43 mm x 12 mm
- Acabado sand blasted o pulido
- Movimiento Seagull TY3620-2 carga manual
- T-Tube en la tija
- Cristal zafiro double domed antirreflejo
- Trasera a presión con locomotora grabada
- Corona tipo cebolla
- Dial cerámico blanco perla
- Agujas azuladas Breguet
- Subesfera de segundos a las 6
- Correa nobuk camel 22 mm (20 mm hebilla)
- Caja bambú con chapa numerada

#pagebreak()

*DESCRIPCIÓN DEL RELOJ*

El Ferroviario conmemora el primer ferrocarril 
de Iberoamérica: La Habana - Güines (Cuba, 1837).

Inspirado en los relojes de bolsillo ferroviarios, 
combina estética clásica con proporciones de pulsera 
contemporáneas.

#pagebreak()

*UN PROYECTO ÚNICO*

HdR registró la marca "Caminos de Hierro de La Habana", 
nombre de la empresa constructora del primer ferrocarril 
iberoamericano.

Diseñado por Casva (DEP), el proyecto quedó en cartera 
6 años hasta 2020, cuando se retomó por petición popular.

Edición limitada 150 unidades numeradas con chapa 
troquelada en caja de bambú. Un homenaje que conecta 
la historia ferroviaria cubana con la pasión relojera 
española.

#pagebreak()

*DISEÑO Y VARIANTES*

Dos acabados disponibles: sand blasted (mate cepillado) 
que evita reflejos, o pulido brillante elegante.

Dial cerámico blanco perla con agujas azuladas tipo 
Breguet, símbolo de alta relojería. Cristal zafiro 
double domed aporta profundidad vintage.

Corona tipo cebolla facilita la cuerda manual. El 
calibre de 37,2 mm dicta las proporciones. Subesfera 
a las 6, fiel a los clásicos ferroviarios de bolsillo.

#pagebreak()

*TRADICIÓN FERROVIARIA*

Los relojes ferroviarios de bolsillo eran instrumentos 
de alta precisión sometidos a estrictas regulaciones. 
La legibilidad era vital: los maquinistas coordinaban 
horarios con exactitud para evitar colisiones.

Este reloj rinde homenaje a esa tradición. El calibre 
de carga manual recuerda aquellos legendarios timepieces. 
La trasera con locomotora grabada conecta la historia 
ferroviaria cubana con la pasión relojera española.

#pagebreak()

*INSTRUCCIONES DE USO*

*Carga:* Gira la corona en sentido horario unas 40 
vueltas hasta sentir resistencia. No fuerces.

*Hora:* Tira de la corona y gira para ajustar. 
Devuelve presionando.

*Mantenimiento:* Cuerda diaria a la misma hora. 
Revisión cada 3-5 años.

*Correa nobuk:* Evita agua prolongada. Limpia con 
paño húmedo.

*Cristal:* Resistente a arañazos, vulnerable a 
impactos. Limpia con microfibra.

#pagebreak()

#image("ferroviario_back.jpeg", width: 100%, height: 50%, fit: "cover")

#place(top + left, dx: 5mm, dy: 45mm, box(width: 100% - 10mm, text(black, size: 7pt)[
La trasera a presión presenta un relieve hidráulico con locomotora 
grabada, homenaje al primer ferrocarril iberoamericano La Habana - 
Güines (1837). Edición limitada 150 unidades numeradas con 
chapa troquelada. 
]))

#place(bottom + left, dx: 5mm, dy: -5mm, text(black, size: 7pt)[
_Ferroviario · Hablemos de Relojes_
])