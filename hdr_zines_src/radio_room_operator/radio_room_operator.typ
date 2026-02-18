#import "../../src/lib.typ": watch_zine

#set document(author: "HdR", title: "Candino Radio Room Operator")
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
  image("radio_room_operator_front.jpeg", width: 100%, height: 100%, fit: "cover")
  place(top + center, dy: 3mm, box(
    fill: rgb(0, 0, 0, 150),
    inset: 8pt,
    radius: 4pt,
    [
      #text(white, size: 12pt, stroke: 0.5pt + black)[*Candino*]\ 
      #text(white, size: 10pt, stroke: 0.5pt + black)[*Radio Room Operator*]
    ]
  ))
})
#pagebreak()

*ESPECIFICACIONES TÉCNICAS*

- Movimiento: ETA 2824-2 Swiss Made
- Caja: Acero inoxidable 316L
- Diámetro: 38 mm (40,5 mm con corona)
- Grosor: 11,25 mm
- Cristal: Doble zafiro (29 mm diámetro)
- Corona: De seguridad patentada Candino
- Resistencia: 5 ATM
- Fondo visto: Cristal de zafiro
- Correa: Piel cocodrilo 20 mm deployante
- Garantía: 2 años
- Serie limitada: 63 unidades numeradas

#pagebreak()

*EL OPERADOR DE RADIO*

En las salas de radio de buques y estaciones costeras, 
el tiempo era crítico. Los operadores coordinaban 
comunicaciones vitales: socorro, meteorología, 
posiciones navales.

Sus relojes debían ser legibles de un vistazo rápido, 
precisos y fiables. Diales con alto contraste, números 
grandes, agujas distintivas. Instrumentos profesionales 
para un trabajo exigente.

El RRO rinde homenaje a esos timepieces históricos, 
instrumentos que salvaron vidas en los mares.

#pagebreak()

*RRO LEGENDARIOS*

Los relojes de operador de radio tienen una rica 
historia. Vostok produjo numerosos modelos militares 
soviéticos con diales característicos: números grandes, 
alto contraste, escalas de minutos segmentadas.

El Zlatoust Typhoon 24 horas, usado en submarinos 
nucleares. Los Kirova navales con calibres robustos. 
Poljot creó versiones para aviación con funciones 
cronógrafo.

En Occidente, marcas como Weems, Longines (Lindbergh) 
y Breitling desarrollaron relojes de navegación. Una 
tradición global de instrumentos profesionales.

#pagebreak()

*BASE CANDINO 4315*

Septiembre 2009: nace el proyecto en HdR. Múltiples 
encuestas comunitarias definieron reloj base, diseño 
de dial, personalización y colores.

La base escogida por votación fue el Candino 4315: 
reloj suizo de calidad excepcional. Caja acero 316L, 
corona de seguridad patentada, cristal doble zafiro.

Movimiento ETA 2824-2 con acabado rodio visible. 

#pagebreak()

*DIAL MILITAR Y FUNCIONAL*

El diseño del dial siguió los códigos clásicos de los 
relojes de operador: números grandes y legibles, alto 
contraste, agujas distintivas tipo dardo.

Escala de minutos periférica con segmentos coloreados 
para facilitar la lectura rápida de intervalos. 
Números arábigos en posiciones principales.

Fabricado en Suiza según especificaciones del foro. 
Múltiples pruebas y correcciones hasta lograr el 
resultado perfecto. Un dial único, no comercializado 
en ningún otro reloj Candino.

#pagebreak()

*NUMERACIÓN LÁSER*

Cada RRO lleva grabado "Candino RRO XX/63" en el 
lateral de la caja mediante láser de precisión.

Los números se asignaron según orden riguroso de 
reserva. Serie cerrada: ni uno más, ni uno menos. 
63 unidades para 63 propietarios.

Casva se quedó el #1, Lucense el #2, y así 
sucesivamente. Algunos foreros pidieron varias 
unidades. Un reloj exclusivo que no se repetirá.

#pagebreak()

// back cover
#block({
  image("radio_room_operator_back.jpeg", width: 100%, height: 50%, fit: "cover")
})

#place(top + left, dx: 5mm, dy: 45mm, box(width: 100% - 10mm, text(black, size: 7pt)[
El fondo visto de cristal de zafiro muestra el calibre 
ETA 2824-2 con acabado rodio. Un movimiento suizo 
de referencia, robusto y preciso, símbolo de calidad 
relojera. 
]))

#place(bottom + left, dx: 5mm, dy: -5mm, text(black, size: 7pt)[
_Candino · Hablemos de Relojes_
])
