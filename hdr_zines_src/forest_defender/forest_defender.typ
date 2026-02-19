#import "../../src/lib.typ": watch_zine

#set document(author: "HdR", title: "RSWC Forest Defender")
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
  image("forest_defender_front.jpeg", width: 100%, height: 100%, fit: "cover")
  place(top + center, dy: 3mm, box(
    fill: rgb(0, 0, 0, 150),
    inset: 8pt,
    radius: 4pt,
    text(white, stroke: 0.5pt + black)[
      #text(size: 12pt)[*RSWC*]\ 
      #text(size: 10pt)[*Forest Defender*]
    ]
  ))
})#pagebreak()

*ESPECIFICACIONES TÉCNICAS*
- Caja de acero 316L Swiss Grade con tratamiento DLC
- 42mm sin corona, lug to lug: 51mm, espesor: 14.3mm
- Asas: 24mm, cierre: 20mm, pasadores atornillados
- Corona a presión 7mm firmada, con protectores
- Resistencia: 100 metros
- Doble datario negro custom
- Bisel de zafiro unidireccional 120 clicks
- Superluminova Swiss BGW9 en agujas, índices y bisel
- Cristal de zafiro plano con TT/AA interno
- Correa de piel con hebilla grabada RSWC
- Peacock SL-4601, cronógrafo automático
- 28.800 VPH, 28 rubíes, 45h reserva
#pagebreak()

*HOMENAJE A LOS DEFENSORES DEL BOSQUE*

El RSWC Forest Defender nace como homenaje a todos los que luchan 
contra el fuego en España: UME, bomberos civiles, forestales, 
voluntarios, BRIF, Guardia Civil, Protección Civil y todos los 
cuerpos que arriesgan sus vidas por proteger nuestros bosques.

Este cronógrafo automático con caja cuadrada icónica incorpora 
herramientas específicas para equipos de emergencia: escala de 
bomberos en el bisel y pulsómetro en el interior.

Disponible en dos versiones: Firefighter (bomberos) y Professional 
(servicios tácticos y de rescate).

#pagebreak()

*ESCALA DE BOMBEROS*

El bisel giratorio de zafiro de 120 clicks incorpora una escala 
especial en verde lima y rojo para controlar tiempos críticos 
con equipos de respiración autónoma.

Zona verde (15 minutos): Tiempo seguro de intervención antes de 
tomar precauciones.

Zona roja (siguiente 15 min): Indica que hay que comenzar a 
salir de la zona de peligro.

Diseñada para unidades de élite en tierra y bajo el agua, con 
colores orientados a máxima legibilidad en condiciones extremas.

#pagebreak()

*PULSÓMETRO INTEGRADO*

El bisel interior incorpora un pulsómetro para medir frecuencia 
cardíaca de forma rápida usando el cronógrafo.

Uso: Inicia el cronógrafo al localizar el pulso. Cuenta 15 latidos 
y detén el cronógrafo. La posición de la aguja trotadora muestra 
la frecuencia cardíaca en latidos por minuto.

Diseñado para bomberos y personal sanitario que necesitan 
evaluaciones rápidas en situaciones de emergencia.

#pagebreak()

*TRATAMIENTO DLC Y CONSTRUCCIÓN*

La caja lleva tratamiento DLC (Diamond Like Carbon) que aumenta 
dureza y resistencia a rayadas. Ideal para uso profesional en 
condiciones extremas.

El bisel de zafiro permite más de dos colores (cerámica solo 
admite dos). Los 120 clicks proporcionan precisión de 30 segundos 
por click.

Peacock SL-4601: Cronógrafo mecánico automático con 28 rubíes, 
28.800 VPH y 45 horas de reserva. Remonte manual incluido.

#pagebreak()

*CINCO VERSIONES DISPONIBLES*

UME3: Edición especial 20º aniversario UME en DLC negro. Escudo 
grabado en cara frontal. Bisel escala de bomberos.

Forest Defender Firefighter: Bisel escala bomberos (verde/rojo). 
Dedicado a bomberos civiles, forestales, BRIF. Disponible en 
DLC negro y acabado acero.

Forest Defender Professional: Bisel táctico cuenta regresiva. 
Homenaje a Guardia Civil, Policía, Protección Civil, voluntarios, 
rescate. Disponible en DLC negro y acabado acero.

Especificaciones técnicas idénticas. Limited Edition numerada.

#pagebreak()

#image("forest_defender_back.jpeg", width: 100%, height: 50%, fit: "cover")

#place(top + left, dx: 5mm, dy: 45mm, box(width: 100% - 10mm, text(black, size: 7pt)[
Trasera grabada con inscripción dedicada a todos los cuerpos que 
protegen nuestros bosques. Cada unidad lleva marcado "Limited Edition 
1 of xxx" según número total fabricado.
]))

#place(bottom + left, dx: 5mm, dy: -5mm, text(black, size: 7pt)[
_RSWC · Hablemos de Relojes_
])
