#import "../../src/lib.typ": watch_zine

#set document(author: "HdR", title: "Vostok K43")
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
  image("vostok_k43_front.jpeg", width: 100%, height: 100%, fit: "cover")
  place(top + center, dy: 3mm, box(
    fill: rgb(0, 0, 0, 150),
    inset: 8pt,
    radius: 4pt,
    [
      #text(white, size: 12pt, stroke: 0.5pt + black)[*Vostok*]\ 
      #text(white, size: 10pt, stroke: 0.5pt + black)[*Retro K43*]
    ]
  ))
})
#pagebreak()

*ESPECIFICACIONES TÉCNICAS*
- Modelo: Vostok Retro K43
- Movimiento: Vostok 2415B automático
- Caja: Acero inoxidable
- Corona: Tipo cebolla firmada
- Esfera: Tipografía eslava con logo ЧЧЗ
- Agujas: Catedral con lume tostado
- Índices: Lume envejecido tipo vintage
- Correa: Piel alomada con hebilla firmada
- Distribuidor: Meranom
#pagebreak()

*75 ANIVERSARIO VOSTOK*

1942: nace Compañía Vostok en Chistopol. Durante 
Gran Guerra Patriótica, evacuación Primera Fábrica 
Relojes Moscú hacia el este. Instalación en ciudad 
río Kama en Tatarstán.

Producción relojera para Ejército Rojo. K43 representa 
primer nombre proyecto fundacional: K por Kama, 43 
por 1943. Factoría ЧЧЗ (Chistopolski Chasovoi 
Zavod = Fábrica Relojes Chistopol).

75 años después, HdR honra legado. Proyecto 2017 
inspirándose en relojes militares soviéticos Segunda 
Guerra Mundial. Estética vintage auténtica con 
tecnología moderna Vostok automática.

#pagebreak()

*LOGO ЧЧЗ Y TIPOGRAFÍA*

Siglas ЧЧЗ (Chistopolski Chasovoi Zavod) marcaban 
movimientos fabricados factoría original. Tipografía 
cirílica auténtica reproduce estilo propagandístico 
soviético años 40.

Esfera personalizada con caracteres eslavos perfectamente 
proporcionados. Índices horarios simples: círculos 
luminosos acabado envejecido tostado. Aspecto desgastado 
intencional imita oxidación natural radio antiguo.

Dial color crema vintage, no blanco puro moderno. 
Contraste perfecto con agujas catedral oscuras. 
Envejecido coherente: números, índices, lume. 
Autenticidad histórica máxima sin falsificar.

#pagebreak()

*AGUJAS CATEDRAL*

Las agujas catedral son icono estilístico militar 
soviético. Forma arquitectónica gótica alargada, 
máxima legibilidad oscuridad total. Tamaño mayor 
que agujas originales Retro base.

Lume envejecido tostado coherente con índices. 
Segundero elongado aumentado respecto modelo base. 
Proporciones balanceadas para diámetro esfera K43.

Construcción robusta Vostok: tolerancia extrema 
golpes, vibraciones, temperaturas. Movimiento 2415B 
bidireccional. Frecuencia 19.800 A/h, 31 rubíes, 
reserva 31 horas.

#pagebreak()

*TRASERA Y CORONA*

Trasera grabada con estrella soviética clásica cinco 
puntas. Diseño amanecer representa el Este (Vostok 
significa "del Este" en ruso). Iconografía propaganda 
soviética: renacer, esperanza, futuro luminoso.

Corona tipo cebolla sobredimensionada firmada. Estilo 
característico relojería militar rusa histórica. 
Mejor agarre con guantes invierno extremo. Más 
ergonómica que coronas occidentales pequeñas.

Correa mejorada: piel genuina alomada con hebilla 
metal firmada Vostok. Conjunto estéticamente coherente: 
reloj completo vintage militar auténtico. Serie 
especial numerada individualmente trasera.

#pagebreak()

*INSTRUCCIONES DE USO*

*Carga automática:* Movimiento bidireccional. Llevar 
muñeca o dar 20-30 vueltas corona. Reserva 31 horas. 
Hacking seconds: segundera detiene al tirar corona.

*Corona cebolla:* Diseño sobredimensionado facilita 
agarre. Tirar suavemente para ajustar hora. Empujar 
firmemente al terminar.

*Ajuste hora:* Tirar corona completamente. Girar ambas 
direcciones. Empujar cuando segundera pase por 12.

*Lume envejecido:* Color tostado intencional. Brillo 
reducido respecto lume moderno. Cargar luz directa 
10-15 minutos.

#pagebreak()

// back cover
#block({
  image("vostok_k43_back.jpeg", width: 100%, height: 50%, fit: "cover")
})

#place(top + left, dx: 5mm, dy: 45mm, box(width: 100% - 10mm, text(black, size: 7pt)[
El Vostok Retro K43 representa el primer proyecto 
fundacional de la factoría Chistopol evacuada durante 
la Segunda Guerra Mundial. 75 años de historia ininterrumpida 
desde 1942. Proyecto HdR 2017 con distribución Meranom.
]))

#place(bottom + left, dx: 5mm, dy: -5mm, text(black, size: 7pt)[
_Vostok · Hablemos de Relojes_
])
