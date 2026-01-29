#import "../../src/lib.typ": watch_zine

#set document(author: "HdR", title: "Candino Grand Belize")
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
  image("grand_belize_front.jpeg", width: 100%, height: 100%, fit: "cover")
  place(top + center, dy: 5mm, box(
    fill: rgb(0, 0, 0, 150),
    inset: 8pt,
    radius: 4pt,
    text(white, size: 20pt, stroke: 0.5pt + black)[
      *CANDINO*\ 
      *Grand Belize*
    ]
  ))
})
#pagebreak()

*ESPECIFICACIONES TÉCNICAS*
- Caja acero inoxidable 316L
- Diámetro: 43mm
- Resistencia: 300 metros
- Movimiento automático A10 COSC
- Certificación COSC individual
- Cristal de zafiro con AR
- Bisel unidireccional zafiro
- Aplicaciones de luminova
- Válvula de helio
- Corona roscada
- Trasera mecanizada y grabada
- Acabados pulidos y satinados
- Correa integrada acero
- Swiss Made
- Edición limitada 200 unidades
- Calibres numerados
#pagebreak()

*HISTORIA DEL PROYECTO*
El Grand Belize comenzó en 2011 como un sueño de los foreros de HdR. En 2012, el proyecto fue presentado al Grupo Festina en Basilea, iniciando una relación que duraría años. Fue en 2014 cuando el diseño evolucionó hasta su forma definitiva.

En 2018, tras siete años de desarrollo, llegó el momento definitivo: Candino adoptó el Grand Belize como parte de su catálogo oficial. El presidente del Grupo Festina decidió apoyar la consecución del COSC e incorporar el GB a la marca Candino Swiss Made.
#pagebreak()

*EXCELENCIA TÉCNICA*
El Grand Belize destaca por su meticulosa fabricación. La trasera mecanizada requirió cuatro prototipos hasta alcanzar la perfección. El inserto de zafiro del bisel presenta números y elementos desarrollados específicamente para este proyecto.

La aplicación de luminova se realizó mediante pasta integrada en el bisel por vaciado, garantizando máxima visibilidad nocturna. Cada componente fue estudiado, corregido y validado tras múltiples muestras y mejoras iterativas.

El calibre A10 con certificación COSC individual asegura una precisión cronométrica excepcional, posicionando al GB entre los relojes de buceo más precisos del mercado.
#pagebreak()

*DISEÑO Y PRESENCIA*
El Candino Grand Belize combina estética deportiva con elegancia suiza. Su caja de 43mm presenta acabados mixtos: superficies pulidas que contrastan con satinados mate, creando juegos de luz refinados.

El bisel unidireccional de zafiro aporta resistencia extrema a los arañazos, superando a los biseles tradicionales de aluminio o cerámica. La esfera equilibrada permite lectura instantánea de la hora, incluso en condiciones submarinas adversas.

La válvula de helio hace del GB un verdadero instrumento profesional, preparado para descompresiones en inmersiones de saturación profunda.
#pagebreak()

*EL LEGADO CANDINO*
La incorporación del logo Candino Swiss Made elevó el proyecto a otro nivel. De sueño comunitario a reloj oficial de una marca suiza con historia.

Cada unidad incluye certificado COSC individual, documentando la precisión del calibre. Solo 200 ejemplares que fusionan la pasión de HdR con la tradición relojera suiza.

Dedicado a la memoria de Manuel Casva, cuyo trabajo desinteresado hizo posible este sueño colectivo que tardó siete años en materializarse.
#pagebreak()

*INSTRUCCIONES DE USO*
*Puesta en hora:* Desenroscar corona, extraer a segunda posición, ajustar horario, empujar y enroscar firmemente.

*Uso submarino:* Verificar corona roscada correctamente antes de sumergir. No manipular corona bajo el agua.

*Válvula de helio:* Desenroscar tras inmersiones de saturación para liberar gases.

*Mantenimiento:* Revisión cada 3-5 años en servicio oficial. Enjuagar con agua dulce tras contacto con agua salada.

*Bisel:* Girar solo en sentido antihorario para cronometrar inmersiones.

*Luminova:* Exponer a luz brillante 15 minutos para carga máxima.
#pagebreak()

#block({
  image("grand_belize_back.jpeg", width: 100%, height: 50%, fit: "cover")
})

#place(top + left, dx: 5mm, dy: 45mm, box(width: 100% - 10mm, text(black, size: 7pt)[
La trasera del Grand Belize presenta un mecanizado complejo. El grabado incluye el número de serie único de cada calibre A10 COSC, haciendo de cada ejemplar una pieza irrepetible dentro de las 200 unidades producidas.
]))

#place(bottom + left, dx: 5mm, dy: -5mm, text(black, size: 7pt)[
_Candino Swiss Made · Hablemos de Relojes_
])
