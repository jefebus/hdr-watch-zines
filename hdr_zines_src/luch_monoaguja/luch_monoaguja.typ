#import "../../src/lib.typ": watch_zine

#set document(author: "HdR", title: "Luch Monoaguja")
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
  image("luch_monoaguja_front.jpeg", width: 100%, height: 100%, fit: "cover")
  place(top + center, dy: 3mm, box(
    fill: rgb(0, 0, 0, 150),
    inset: 8pt,
    radius: 4pt,
    [
      #text(white, size: 12pt, stroke: 0.5pt + black)[*Luch*]\ 
      #text(white, size: 10pt, stroke: 0.5pt + black)[*Monoaguja*]
    ]
  ))
})
#pagebreak()

*ESPECIFICACIONES TÉCNICAS*

- Caja cromada de 36mm
- Grosor: 10.2mm (versión 2021: acero, 37.6mm)
- Entre garras: 20mm
- Lug to lug: 44mm
- Movimiento mecánico manual Luch 1801.1
- Fabricación in-house en Minsk
- 15 rubíes
- Frecuencia: 21.600 alt/h
- Reserva de marcha: 38-43h
- Cristal mineral
- Resistencia al agua: 3 ATM (versión 2021)
- Ventana de exhibición trasera

Disponible en diales champán y negro metalizado.
#pagebreak()

*EL MONOAGUJA DE LUCH*

Luch, la histórica manufactura
bielorusa, ofrece uno de los
pocos monoagujas mecánicos del
mercado actual. Su diseño
respeta la tradición con logos
originales y estética clásica.

El calibre 1801.1 es el último
movimiento mecánico que fabrica
Luch, heredero de siete décadas
de tradición relojera soviética.
Una pieza de producción limitada.

Dos diales disponibles: champán
elegante y negro metalizado
sofisticado. Ambos con caracteres
cirilícos auténticos.
#pagebreak()

*FILOSOFÍA MONOAGUJA*

Los monoagujas nacen de los
orígenes de la horología: desde
relojes de sol hasta los de
ciudades del siglo XVII. Durante
siglos, una aguja bastó.

Este concepto invita a reflexionar
sobre nuestra obsesión por el
minuto exacto. Un monoaguja lee la
hora con precisión de 5 minutos,
devolviendo sosiego.

Como decía un propietario: "Lo
conecto con días pausados. Quizá
él logre traerme ese sosiego."
#pagebreak()

*LA FÁBRICA LUCH DE MINSK*

Luch nació en 1953 cuando
Bielorrusia decidió crear una
industria relojera en Minsk con
fábrica y centro de formación.

En 2010, Franck Muller adquirió
el 80%, salvándola del cierre.
La operación buscaba aprovechar
Luch como proveedora, aunque
nuevos modelos usarían Miyota.

El 1801.1 es un calibre diminuto
usado en relojes femeninos,
copiado de un UROFA en los 50.
Siete décadas de historia.
#pagebreak()

*DISEÑO Y EXPERIENCIA*

El Luch seduce por su modestia.
Su tamaño compacto (36-37.6mm)
es perfecto para muñecas
discretas. El dial blanco cobra
vida con cirílicos: el rayo
bajo las 12h y las joyas en 6h.

La ventana trasera revela el
movimiento, práctica y decorativa.
El sonido al dar cuerda es
magnífico, aunque transmite
fragilidad en solo 20 vueltas.

Genera conversación: desde
interés genuino hasta bromas
sobre "arreglarlo".
#pagebreak()

*PRECISIÓN Y USO*

Precisión: +/- 90 seg/día oficial,
pero muchos ejemplares ganan solo
2 minutos en 10 días. Reserva:
38h oficial, 43h en pruebas.

Dar cuerda: 20 vueltas en sentido
horario hasta sentir resistencia.
No forzar.

Ajustar hora: tirar suavemente
de corona y girar. La aguja marca
horas, cada división son 5 min.

Versión cromada: no resistente.
Versión 2021 acero: 3 ATM.
Revisión cada 3-5 años.
#pagebreak()

// Page 8 - Back cover
#block({
  image("luch_monoaguja_back.jpeg", width: 100%, height: 50%, fit: "cover")
})

#place(top + left, dx: 5mm, dy: 45mm, box(width: 100% - 10mm, text(black, size: 7pt)[
La tapa oculta el calibre 1801.1, un movimiento 
diminuto con 70 años de historia. Los caracteres cirílicos 
identifican el fabricante: Луч (Luch, que significa "rayo" en 
bielorruso). 
]))

#place(bottom + left, dx: 5mm, dy: -5mm, text(black, size: 7pt)[
_Luch · Hablemos de Relojes_
])
