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
  place(top + center, dy: 3mm, box(
    fill: rgb(0, 0, 0, 150),
    inset: 8pt,
    radius: 4pt,
    text(white, stroke: 0.5pt + black)[
      #text(size: 12pt)[*Candino*]\ 
      #text(size: 10pt)[*Grand Belize*]
    ]
  ))
})#pagebreak()

*ESPECIFICACIONES TÉCNICAS*

- Caja acero inoxidable 316L de 43mm de diámetro
- Resistencia: 300 metros
- Movimiento automático A10 COSC con certificación  individual
- Cristal de zafiro con AR
- Bisel unidireccional zafiro
- Aplicaciones de luminova BGW9 Swiss Made
- Válvula de helio
- Corona roscada
- Trasera mecanizada y grabada
- Correa integrada acero
- Edición limitada 200 unidades con calibres numerados
#pagebreak()

*HISTORIA DEL PROYECTO*

El Grand Belize comenzó en 2011 como un sueño de los foreros de HdR. En 2012, el proyecto fue presentado al Grupo Festina en Basilea, iniciando una relación que duraría años. Fue en 2014 cuando el diseño evolucionó hasta su forma definitiva.

En 2018, tras siete años de desarrollo, llegó el momento definitivo: Candino adoptó el Grand Belize como parte de su catálogo oficial. 
#pagebreak()

*EXCELENCIA TÉCNICA*

El Grand Belize destaca por
su meticulosa fabricación.
La trasera mecanizada requirió
cuatro prototipos hasta lograr
la perfección.

El inserto de zafiro del bisel
presenta números desarrollados
específicamente. La luminova
se aplicó mediante pasta
integrada por vaciado.

El calibre A10 con certificación
COSC individual asegura
precisión cronométrica
excepcional, posicionando al
GB entre los divers más
precisos del mercado.
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

*Puesta en hora:* Desenroscar
corona y extraer,
ajustar hora, luego
presionar y enroscar nuevamente.

*Uso submarino:* Verificar
corona roscada antes de
sumergir. No manipular
corona bajo el agua.

*Válvula de helio:* Desenroscar
tras inmersiones de saturación.

*Bisel:* Girar solo antihorario.

*Mantenimiento:* Revisión cada
3-5 años. Enjuagar con agua
dulce tras uso en mar.
#pagebreak()

#block({
  image("grand_belize_back.jpeg", width: 100%, height: 50%, fit: "cover")
})

#place(top + left, dx: 5mm, dy: 45mm, box(width: 100% - 10mm, text(black, size: 7pt)[
La trasera del Grand Belize presenta un mecanizado complejo. El grabado incluye el número de serie único de cada calibre A10 COSC, haciendo de cada ejemplar una pieza irrepetible dentro de las 200 unidades producidas.
]))

#place(bottom + left, dx: 5mm, dy: -5mm, text(black, size: 7pt)[
_Hablemos de Relojes_
])
