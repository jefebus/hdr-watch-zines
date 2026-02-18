#import "../../src/lib.typ": watch_zine

#set document(author: "HdR", title: "Sol y Sombra – Monumental")
#set text(font: "Carlito", size: 7pt, lang: "es")
#set page("a4")

#show heading.where(level: 1): hd => {
  pad(top: 2em, text(10em, align(center, hd.body)))
}

#show: watch_zine.with(
  digital: json(bytes(sys.inputs.at("digital", default: "false"))),
  draw-border: true
)

// cover
#block({
  image("monumental_front.jpeg", width: 100%, height: 100%, fit: "cover")
  place(top + center, dy: 3mm, box(
    fill: rgb(0, 0, 0, 150),
    inset: 8pt,
    radius: 4pt,
    text(white, stroke: 0.5pt + black)[
      #text(size: 12pt)[*Sol y Sombra*]\ 
      #text(size: 10pt)[*Monumental*]
    ]
  ))
})#pagebreak()

*ESPECIFICACIONES TÉCNICAS*
- Caja de acero 316L acabado pulido
- Diámetro: 41mm, espesor: 15,1mm
- Lug to lug: 48mm, anchura asas: 22mm
- Corona grabada de 8mm de diámetro
- Cristal zafiro domed con AR interno
- Bisel zafiro funcional numerado
- Cabeza de toro aplicada oro pulido
- Calibre Seagull ST-1901 carga manual
- Cronógrafo mecánico, 21.600 VPH
- Tapa trasera roscada zafiro
- Resistencia al agua: 100 metros
- Correa piel con hebilla firmada
#pagebreak()

*TRAJES DE LUCES I*

Como el diestro elige su 
vestimenta antes de saltar al 
ruedo, el Monumental se presenta 
en cuatro acabados inspirados en 
los trajes de torear.

*Grana y Oro:* Homenaje a las 
capas del toro bravo. Bisel con 
pelajes de Lidia: Jabonero, 
Barroso, Colorado, Retinto, 
Negro. Riqueza cromática del 
ganado español.

*Tabaco y Oro:* Las encornaduras. 
Bisel con formas de cuernos: 
Cornalón, Cornicorto, Bizco, 
Tocado. La geometría del peligro 
grabada en cristal.

#pagebreak()

*TRAJES DE LUCES II*

*Fortuna y Oro:* Las suertes de 
la lidia. Bisel con lances, 
pases y trofeos. Desde el 
capote hasta las orejas. La 
faena completa en zafiro.

*Mal Fario:* El hermano oscuro. 
Negro azabache contra el mal 
agüero. El amuleto que todo 
torero lleva al tendido. La 
fortuna y su reverso. Dos caras 
de la misma moneda.

#pagebreak()

*ÚLTIMA SERIE DEL ST-1901*

El gobierno chino decidió no 
suministrar más calibres 
ST-1901 a empresas occidentales, 
al menos no a pequeñas micro 
marcas como Sol y Sombra.

HdR consiguió reservar un total 
de 200 calibres. Esta serie 
taurina forma parte de ese 
lote. Es la primera y última 
vez que veremos un cronógrafo 
Monumental con el veterano y 
honorable ST-1901.

Un movimiento de leyenda para un 
proyecto legendario. El canto 
del cisne de los cronógrafos 
Sol y Sombra con calibre de 
carga manual. La última faena.

#pagebreak()

*CRÓNICA DE UNA TARDE*

Fue la faena al cuarto el 
summum de la perfección, de la 
tranquilidad, de la más auténtica 
naturalidad. Todo medido, todo 
exacto, todo de una suprema 
elegancia.

Los pies del torero tenían 
clavada su planta en el albero. 
Separadas las piernas para 
conseguir más firmeza, la muleta 
adelantada para citar al toro.

La estrella tridimensional 
aplicada, homenaje a Seagull y 
la Selección. Pulsadores 
ovalados propios de cronógrafos 
añejos. Corona de 8mm para dar 
cuerda con comodidad. Cada 
detalle, una suerte ejecutada 
con temple.

#pagebreak()

*INSTRUCCIONES DE USO*

*Carga:* Movimiento de cuerda 
manual. Dar 30-35 vueltas 
completas a la corona en sentido 
horario hasta sentir ligera 
resistencia. No forzar.

*Cronógrafo:* Pulsador superior 
para iniciar/detener. Pulsador 
inferior para poner a cero 
(solo con cronógrafo parado).

*Ajustes:* Corona en primer 
punto: ajustar hora. 

*Mantenimiento:* Resistente 50m. 
No sumergir. Revisión cada 4-5 
años. Guardar en lugar seco. La 
correa de piel requiere cuidado 
especial.

#pagebreak()

#image("monumental_back.jpeg", width: 100%, height: 50%, fit: "cover")

#place(top + left, dx: 5mm, dy: 45mm, box(width: 100% - 10mm, text(black, size: 7pt)[
La tapa trasera roscada con cristal de zafiro plano permite admirar 
el calibre Seagull ST-1901, con su rueda de columnas visible. 
Grabado con versos de Federico García Lorca sobre el toro, 
animal mítico de la cultura española. 
]))

#place(bottom + left, dx: 5mm, dy: -5mm, text(black, size: 7pt)[
_Sol y Sombra · Hablemos de Relojes_
])
