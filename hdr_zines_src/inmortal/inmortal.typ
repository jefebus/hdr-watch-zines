#import "../../src/lib.typ": watch_zine

#set document(author: "HdR", title: "Sol y Sombra – SyS Inmortal")
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
  image("inmortal_front.jpeg", width: 100%, height: 100%, fit: "cover")
  place(top + center, dy: 5mm, box(
    fill: rgb(0, 0, 0, 150),
    inset: 8pt,
    radius: 4pt,
    text(white, size: 16pt, stroke: 0.5pt + black)[
      *Sol y Sombra*\ 
      *Inmortal*
    ]
  ))
})
#pagebreak()

*ESPECIFICACIONES TÉCNICAS*
- Caja en acero 316L, terminaciones pulidas
- Diámetro: 40 mm
- Lug to lug: 47 mm
- Espesor de la caja: 8,4 mm
- Espesor total contando el cristal: 11,4 mm
- Fondo a rosca con gran escudo grabado
- Movimiento manual Seagull ST1700
- Cristal de zafiro domed con cuatro capas de antireflectante interno incoloro
- Esfera color crema suave con detalles aplicados en metal
- Resistencia al agua de 5 atmósferas
- Paso de correa 18 mm
#pagebreak()

*DESCRIPCIÓN DEL RELOJ*

El Sol y Sombra Inmortal es un homenaje directo a los 
inmortales relojes clásicos españoles de los años 60 y 70.

Aquellos relojes chapados en oro con cuerda manual y 
segundero a las 6 dominaron los escaparates de las 
relojerías españolas durante décadas.

Duward, Dogma, Festina y Cauny fabricaron infinidad de 
combinaciones de caja, esfera y agujas, manteniendo ese 
patrón clásico con esferas repletas de adornos.

#pagebreak()

*LAS TRES VARIANTES*

*Clásico:* Caja con tratamiento IP en tono oro amarillo, 
esfera crema con apliques dorados. Reproduce fielmente 
el acabado más popular de la época.

*Deportivo:* Caja de acero pulido con esfera y agujas 
en tonos dorados. Combinación especialmente popular 
entre los más jóvenes de la época.

*Moderno:* Todo en acero pulido sin tratamiento IP. 
Adaptación a los gustos actuales manteniendo la 
estética vintage.

#pagebreak()

*DETALLES Y MEJORAS*

La esfera tiene el borde cóncavo y la aguja minutera 
sutilmente curvada para no "raspar" el dial. Detalles 
asombrosos actualizados al siglo XXI.

Donde eran 38 mm, ahora 40 mm. Donde era plástico, 
ahora zafiro domed. Donde no había impermeabilidad, 
ahora 5 atmósferas.

Donde la caja era chapada, ahora usamos IP coating 
ultra longevo. Donde la tapa era a presión, ahora es 
roscada con sello en relieve.

Esfera y aguja minutera con terminación "domed". 
Numeración, índices y adornos aplicados y guilloché. 
Logo especial aplicado y lacado en rojo.

#pagebreak()

*UN LEGADO INMORTAL*

Estos relojes dominaron los escaparates de las relojerías 
españolas en los sesenta y setenta. Había cientos de 
modelos diferentes, todos de una belleza admirable.

Cuántos clientes lucieron estos relojes... Quién no 
tiene un viejo familiar que aún conserva uno...

Queremos rendir homenaje a estas máquinas de medir el 
tiempo que tanto significaron para nuestras vidas y 
darles un nuevo futuro con los materiales y estándares 
de calidad del Siglo XXI.

#pagebreak()

*AYER Y HOY*

_"Por supuesto usted no debe jamás mojar su reloj. 
Ni olvidarse darle cuerda a diario. Ni ajustarlo 
semanalmente con la señal horaria de la radio..."_

Pero ahora sí puede mojarlo. Ahora no necesita darle 
cuerda cada día. Ahora mantiene una precisión asombrosa.

El pasado renace con la tecnología del presente.

Donde el chapado era de 10 micras, ahora el IP coating 
es ultra longevo. Donde el cristal era de plástico, 
ahora es zafiro domed con AR.

*Serie limitada a 150 unidades*\
80 Clásico · 41 Deportivo · 19 Moderno

#pagebreak()

#image("inmortal_back.jpeg", width: 100%, height: 50%, fit: "cover")

#place(top + left, dx: 5mm, dy: 45mm, box(width: 100% - 10mm, text(black, size: 7pt)[
La tapa trasera roscada presenta el escudo Sol y Sombra grabado 
en relieve.
]))

#place(bottom + left, dx: 5mm, dy: -5mm, text(black, size: 7pt)[
_Sol y Sombra · Hablemos de Relojes_
])
