#import "../../src/lib.typ": watch_zine

#set document(author: "HdR", title: "Vostok Amphibia 5/6")
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
  image("vostok_amphibia_5_6_front.jpeg", width: 100%, height: 100%, fit: "cover")
  place(top + center, dy: 3mm, box(
    fill: rgb(0, 0, 0, 150),
    inset: 8pt,
    radius: 4pt,
    [
      #text(white, size: 12pt, stroke: 0.5pt + black)[*Vostok*]\ 
      #text(white, size: 10pt, stroke: 0.5pt + black)[*Amphibia 5/6*]
    ]
  ))
})
#pagebreak()

*ESPECIFICACIONES TÉCNICAS*

- Modelo: Vostok Amphibian AM 420
- Movimiento: Vostok 2416 automático
- Caja: Acero inoxidable, 39mm
- Cristal: Plexiglás abombado
- Resistencia: 20 ATM (200m)
- Corona: A rosca
- Correa: NATO o acero
- Diales: 37 rojos, 17 azules, 15 negros
- Serie: 69 unidades total
- Proyecto: 50 Aniversario Vostok 5/6

#pagebreak()

*MISIÓN VOSTOK 5/6 - 1963*

Junio 1963: por primera vez un hombre y una mujer 
surcan el espacio simultáneamente en misiones coordinadas. 
Valeri Bykovsky en Vostok 5, Valentina Tereshkova 
en Vostok 6.

Tereshkova se convirtió en la primera mujer cosmonauta 
de la historia. 48 órbitas terrestres, casi 3 días 
en el espacio. Bykovsky estableció récord de vuelo 
en solitario: 5 días orbitando la Tierra.

Las naves pasaron a menos de 5 km de distancia. Comunicación 
por radio entre ambas cápsulas. Logro propagandístico 
soviético: igualdad de género en la carrera espacial. 
50 años después, HdR honra este hito histórico.

#pagebreak()

*DISEÑO Y PRODUCCIÓN*

Se crea el proyecto para 
conmemorar el 50 aniversario de la misión Vostok 5/6 
(1963-2013). El diseño del dial se inspira en los 
sellos de correos conmemorativos emitidos por la URSS.

Producción sobre base Vostok Amphibian AM 420, el diver 
clásico de 39mm. Tres acabados de dial diferentes: 
37 unidades en rojo vibrante, 17 en azul profundo, 
y 15 en negro clásico. Total 69 unidades.

Fabricación coordinada con factoría Chistopol mediante 
distribuidor oficial. Cada dial reproduce elementos 
de la iconografía espacial soviética. Proyecto 
íntegramente HdR.

#pagebreak()

*MODELO AM-420*

El Amphibian AM-420 es el diver clásico de Vostok. 
Caja característica cushion de 39mm, diseño atemporal 
desde los años 60. Sin bisel externo, cristal plexiglás 
abombado resistente a presión extrema.

Movimiento Vostok 2416 automático con 31 rubíes. 
Carga bidireccional, frecuencia 19.800 A/h, reserva 
31 horas. Construcción robusta típica soviética: 
tolerancia a temperaturas extremas -40°C a +60°C.

Corona a rosca característica de Vostok con sistema 
de compresión único patentado. A mayor profundidad, 
mayor hermeticidad. Tecnología soviética ingeniosa 
que desafía convenciones occidentales.

#pagebreak()

*INSPIRACIÓN FILATÉLICA*

Los sellos postales soviéticos de 1963 celebraron 
la hazaña espacial con diseños icónicos. Cápsulas 
Vostok estilizadas, cosmonautas heroicos, órbitas 
terrestres. Arte de propaganda al servicio del logro.

El dial HdR captura esta estética. Siluetas de las 
naves Vostok 5 y 6 conectadas por onda roja que 
simboliza comunicación por radio. Fondo que evoca 
el cosmos infinito según el color elegido.

Cada sello postal era miniatura de propaganda perfecta. 
Cada dial Vostok 5/6 es homenaje relojero a esa 
epopéyica era. Historia soviética en la muñeca, 
legado espacial perpetuado mediante manufactura rusa.

#pagebreak()

*INSTRUCCIONES DE USO*

*Carga automática:* Llevar en muñeca o dar 20-30 vueltas 
corona sentido horario. Reserva 31 horas. Carga 
bidireccional mediante movimiento del brazo.

*Corona a rosca:* Desenroscar girando sentido antihorario 
hasta liberar. Tirar suavemente para ajustar fecha/hora. 
Enroscar firmemente después para mantener impermeabilidad.

*Resistencia agua:* 20 ATM (200m). No operar corona 
bajo agua. Comprobar corona enroscada antes sumergir. 
Evitar cambios bruscos temperatura. Plexiglás abombado 
resiste presión extrema mediante diseño patentado Vostok.

#pagebreak()

// back cover
#block({
  image("vostok_amphibia_5_6_back.jpeg", width: 100%, height: 50%, fit: "cover")
})

#place(top + left, dx: 5mm, dy: 45mm, box(width: 100% - 10mm, text(black, size: 7pt)[
El Vostok Amphibian es leyenda viva de la relojería 
soviética. Fabricación ininterrumpida desde 1967 en 
Chistopol. 
]))

#place(bottom + left, dx: 5mm, dy: -5mm, text(black, size: 7pt)[
_Vostok · Hablemos de Relojes_
])
