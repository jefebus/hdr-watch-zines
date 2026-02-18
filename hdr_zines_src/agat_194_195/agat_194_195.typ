#import "../../src/lib.typ": watch_zine

#set document(author: "HdR", title: "Agat 194 4C / 195 4C")
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
  image("agat_194_195_front.jpeg", width: 100%, height: 100%, fit: "cover")
  place(top + center, dy: 3mm, box(
    fill: rgb(0, 0, 0, 150),
    inset: 8pt,
    radius: 4pt,
    [
      #text(white, size: 12pt, stroke: 0.5pt + black)[*Agat*]\ 
      #text(white, size: 10pt, stroke: 0.5pt + black)[*194 4C / 195 4C*]
    ]
  ))
})
#pagebreak()

*ESPECIFICACIONES TÉCNICAS*

- Marca: Zlatoust (Agat reedición)
- Diámetro: 46 mm (sin corona)
- Grosor: 17 mm estimado
- Caja: Acero inoxidable masivo
- Cristal: Mineral reforzado
- Corona: Izquierda o derecha (opcional)
- Correa: 24 mm vintage leather
- Resistencia: 200m profesional
- Serie: 25 unidades (15 x 194 + 10 x 195)
- Garantía: 1 año fabricante

#pagebreak()

*MODELO 194 4C - MANUAL*

El Agat 194 4C monta movimiento Vostok 2409 de carga 
manual. Calibre robusto de fabricación rusa, diseñado 
para condiciones extremas. 17 rubíes, frecuencia 
18.000 A/h, reserva de marcha 40 horas.
1
Caja maciza de 46 mm inspirada en los divers militares 
soviéticos de los años 60. Construcción sobredimensionada 
típica de la relojería de buceo rusa profesional.

Corona a rosca con protección integrada. Bisel 
unidireccional con 120 clicks precisos. Dial negro 
mate con índices triangulares luminosos de máxima 
visibilidad bajo el agua.

#pagebreak()

*MODELO 195 4C - AUTOMÁTICO*

El Agat 195 4C equipa movimiento Vostok 2415 automático. 
Mismo calibre base que el 2409 pero con rotor automático 
bidireccional. Fiabilidad legendaria en ambientes hostiles.

Carga automática mediante rotor visible en trasera 
decorada. Sistema antichoque y antimagnético. Hacking 
seconds (parada de segundera al extraer corona) para 
sincronización precisa.

Mismo diseño de caja que el 194 4C. Opción de elegir 
posición de corona: derecha (clásica) o izquierda 
(estilo destro para zurdos o uso con traje de buceo 
en brazo derecho).

#pagebreak()

*PROYECTO ZLATOUST / HdR*

Noviembre 2014: HdR contacta con la manufacture Agat 
en Zlatoust para reeditar estos legendarios divers. 
Primer intento fallido, pero negociaciones retomadas 
con éxito meses después.

Importación directa desde Rusia evitando intermediarios. 
Contrato de compra detallado con Agat. Transparencia 
total: documentación disponible para compradores.

Serie extremadamente limitada: solo 25 unidades totales 
(15 modelo 194 manual + 10 modelo 195 automático). 
Numeración personalizada para coleccionistas HdR.

#pagebreak()

*ZLATOUST Y LA HERENCIA AGAT*

Zlatoust es ciudad industrial histórica de los Urales, 
famosa por su acería y manufactura relojera. La fábrica 
Agat produjo relojes militares y de buceo profesional 
durante décadas para el ejército soviético.

Los modelos 192, 193, 194, 195 son legendarios entre 
coleccionistas de relojes rusos. Construcción robusta, 
movimientos fiables Vostok, cajas enormes preparadas 
para buceo extremo bajo hielo ártico.

Arnold Schwarzenegger fotografiado con un Zlatoust 
192 4C de 60mm. Leyenda urbana: estos relojes podían 
usarse como arma contundente en combate. Peso considerable, 
acero macizo, construcción indestructible.

#pagebreak()

*INSTRUCCIONES DE USO*

*Modelo 194 (Manual):* Girar corona sentido horario 
40-50 vueltas. Reserva 40 horas. Cuerda diaria recomendada. 
NO forzar al sentir resistencia.

*Modelo 195 (Automático):* Carga mediante rotor bidireccional. 
Dar 30 vueltas iniciales. Llevar muñeca mantiene carga. 
Hacking seconds permite sincronización precisa.

*Bisel unidireccional:* 120 clicks. Girar solo sentido 
antihorario. Alinear marca cero con minutero para medir 
tiempo transcurrido. Uso buceo: marcar tiempo fondo.

*Resistencia 200m:* Corona enroscada obligatoria. Comprobar 
antes inmersiones. NO operar corona bajo agua. Enjuagar 
agua dulce tras uso marino.

#pagebreak()

// back cover
#block({
  image("agat_194_195_back.jpeg", width: 100%, height: 50%, fit: "cover")
})

#place(top + left, dx: 5mm, dy: 45mm, box(width: 100% - 10mm, text(black, size: 7pt)[

Fabricación rusa desde 1965. Temperatura 
de operación: -40°C a +60°C. Resistencia a choques 
según norma militar soviética GOST. Relojería seria.
]))

#place(bottom + left, dx: 5mm, dy: -5mm, text(black, size: 7pt)[
_Agat Zlatoust · Hablemos de Relojes_
])
