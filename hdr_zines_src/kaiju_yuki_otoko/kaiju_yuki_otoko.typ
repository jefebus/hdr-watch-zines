#import "../../src/lib.typ": watch_zine

#set document(author: "HdR", title: "RSWC Kaiju Yuki-Otoko")
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
  image("kaiju_yuki_otoko_front.jpeg", width: 100%, height: 100%, fit: "cover")
  place(top + center, dy: 3mm, box(
    fill: rgb(0, 0, 0, 150),
    inset: 8pt,
    radius: 4pt,
    [
      #text(white, size: 12pt, stroke: 0.5pt + black)[*RSWC*]\ 
      #text(white, size: 10pt, stroke: 0.5pt + black)[*Kaiju Yuki-Otoko*]
    ]
  ))
})
#pagebreak()

*ESPECIFICACIONES TÉCNICAS*

- *Diámetro:* 45,5mm
- *Grosor:* 13,7mm
- *Lug to lug:* 50mm
- *Material caja:* Acero quirúrgico 316L
- *Cristal:* Zafiro con revestimiento AR
- *Movimiento:* Seiko NH35 automático
- *Bisel:* Cerámico giratorio unidireccional, 120 clicks, con inserciones luminosas
- *Luminoso:* Swiss C3
- *Resistencia:* 200m
- *Corona:* Roscada firmada RSWC
- *Correa:* Piel 22mm con hebilla firmada RSWC + 2 correas NATO
#pagebreak()

*YUKI-OTOKO: EL HOMBRE DE LAS NIEVES*

En japonés, "Yuki-Otoko" significa "hombre de las nieves", la versión nipona del legendario yeti del Himalaya.

Según la leyenda, esta criatura habita en las montañas nevadas de Japón, especialmente en el monte Fuji. De ahí que la trasera del reloj muestre tanto la huella del Yuki-Otoko como la silueta del monte Fuji.

El Kaiju 2 sigue los pasos del exitoso Kaiju 1, manteniendo la esencia de los míticos monstruos japoneses pero con un acabado único "Frozen".

Este proyecto nació en enero de 2023, con 50 unidades reservadas desde el primer momento.
#pagebreak()

*EL DIAL FROZEN*

El dial "Frozen" es la estrella del Yuki-Otoko. Su textura y tonalidad especiales lo hacen más que original: evoca literalmente un paisaje helado.

Sobre el dial, escritos en kanji japonés, aparecen los caracteres que forman "Yuki-Otoko", reforzando la identidad japonesa del reloj.

El toque de color lo aporta el contrapeso rojo de la aguja de segundos, un detalle que rompe la frialdad del conjunto y le da carácter.

La combinación dial/bisel/caja permite infinitas posibilidades de estilo con correas de piel, NATO o armis, haciéndolo versátil y atractivo.
#pagebreak()

*BISEL Y CAJA: PULIDO Y CERÁMICO*

El bisel es una de las joyas del Kaiju: cerámico, liso (sin estrías), pulido a espejo, con insert cerámico y 120 clicks unidireccionales. Las inserciones luminosas en el bisel permiten su uso en oscuridad.

La caja combina magistralmente cantos pulidos y superficies cepilladas, creando juegos de luz y sombra.

El conjunto bisel de acero liso + insert cerámico + caja trabajada es, en palabras de los propios foreros, "asombrosamente bonito".

Corona y hebilla vienen firmadas con la marca RSWC, seña de identidad de esta casa.
#pagebreak()

*LUMINISCENCIA Y SISTEMA DE CARGA*

El Swiss C3 aplicado en índices, agujas e inserciones del bisel convierte al Yuki-Otoko en una auténtica "linterna" nocturna.

El sistema tija/corona del NH35 es firme pero suave, permitiendo dar cuerda con precisión y placer.

*CINE Y CULTURA*

En 1955, Ishiro Honda (creador de Godzilla) filmó "Ju Jin Yuki-Otoko", censurada y recortada por su productora. Los americanos compraron los derechos y la modificaron. Recientemente rescatada en su versión original, hoy puede disfrutarse tal como Honda la concibió.
#pagebreak()

*INSTRUCCIONES DE USO*

Movimiento NH35 automático: 
se carga con el movimiento. 
Admite carga manual girando 
corona (20–30 vueltas).

*Ajuste:* desenroscar corona. 
Primer punto: cambiar fecha. 
Segundo punto: ajustar hora. 
No ajustar fecha 21:00–03:00.

*Bisel:* Unidireccional, 120 clicks 
cerámico con inserciones luminosas. 
Alinear triángulo con minutero.

*Mantenimiento:* Tras agua salada, 
enjuagar y secar. Revisión cada 
3-5 años recomendable.
#pagebreak()

#block({
  image("kaiju_yuki_otoko_back.jpeg", width: 100%, height: 50%, fit: "cover")
})

#place(top + left, dx: 5mm, dy: 45mm, box(width: 100% - 10mm, text(black, size: 7pt)[
La trasera grabada muestra la huella del Yuki-Otoko y el monte Fuji, hogar legendario de la criatura. Un homenaje a la mitología japonesa que convierte cada Kaiju en una pieza con historia propia.
]))

#place(bottom + left, dx: 5mm, dy: -5mm, text(black, size: 7pt)[
_RSWC · Hablemos de Relojes_
])
