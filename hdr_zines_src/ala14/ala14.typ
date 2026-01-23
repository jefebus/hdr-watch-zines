#import "../../src/lib.typ": watch_zine

#set document(author: "HdR", title: "RSWC Super Stellar Ala 14")
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
  image("ala14_front.jpeg", width: 100%, height: 100%, fit: "cover")  
  place(top + center, dy: 5mm, text(white, size: 18pt)[
      *RSWC*\ 
      *SUPER STELLAR*\
      *ALA 14*
  ])
  place(bottom + left, dx: 5mm, dy: -5mm, text(white, size: 7pt)[
      El reloj de los pilotos de combate
  ])
})

#pagebreak()

*ESPECIFICACIONES TÉCNICAS*

- Caja de Titanio grado 2 con tratamiento DLC (Diamond-Like Carbon)
- Diámetro: 48 mm
- Lug to lug: 52 mm
- Ancho de asas: 24 mm
- Cristal frontal: Zafiro plano con tratamiento AR azul
- Cristal trasero: Zafiro irrayable (protección trasera)
- Esfera azul tono Aerospace
- Full Super Luminova Swiss azul
- Bisel giratorio interno bidireccional (corona a las 9)
- Impermeabilidad: 100 metros (10 bar)
- Coronas roscadas
- Correa NATO gris
- Módulo digital multifunción SKMEI 2049
- Módulo analógico Japan Miyota 2035

#pagebreak()

*DESCRIPCIÓN E INSPIRACIÓN*

El RSWC Super Stellar Ala 14 nace de la necesidad de crear un
instrumento de vuelo moderno, preciso y fiable para los pilotos 
de combate del Ala 14 del Ejército del Aire y del Espacio.

La caja de titanio proporciona una ligereza excepcional sin 
sacrificar resistencia estructural. El tratamiento DLC (Diamond-Like Carbon) 
añade una capa de dureza extrema contra fricción y rayaduras.

Módulo Híbrido: El módulo Skmei 2049 proporciona funciones digitales 
críticas (alarma, cronógrafo split, dual time, cuenta regresiva) 
mientras que el movimiento Miyota 2035 garantiza la precisión analógica 
incluso bajo fuerzas G extremas de hasta 9G en la cabina del Typhoon.

#pagebreak()

*VALIDACIÓN EN VUELO REAL*

Antes de la producción en serie, el Ala 14 del Ejército del Aire y del Espacio (base de Albacete) realizó extensas pruebas en vuelo real con el Eurofighter Typhoon a bordo.

Los pilotos sometieron el reloj a:
- Maniobras de 9G de aceleración centrífuga
- Cambios bruscos de presión de cabina
- Temperaturas extremas (de +40°C a -50°C)
- Vibración constante de motores EJ200
- Radiación solar intensa a 11.000 metros

Resultados: Aprobado con Excelencia

#pagebreak()

*MÓDULO DIGITAL SKMEI 2049*

ENCENDIDO Y MODOS BÁSICOS
#v(-0.5em)

- Botón superior izquierda: LIGHT 
- Botón superior derecha: MODE 
- Botón inferior izquierda: START
- Botón inferior derecha: SET 

PANTALLA HOME
#v(-0.5em)

- La pantalla principal muestra la hora, fecha y día de la semana

ALARMA
#v(-0.5em)

- En pantalla de alarma, pulsa SET para editar
- Usa START y LIGHT para cambiar
- La alarma sonará diariamente a la hora programada
- Desactiva en menú de alarma con el botón LIGHT

CRONÓGRAFO
#v(-0.5em)

- Pulsa START para iniciar/pausar
- Pulsa MODE durante cronógrafo activo para tiempo de vuelta
- Pulsa SET para reiniciar a cero

#pagebreak()

*MÓDULO DIGITAL SKMEI 2049 (CONTINUACIÓN)*

HORA DUAL
#v(-0.5em)

- Accede pulsando MODE hasta pantalla Dual Time
- Pulsa SET para programar la segunda zona horaria
- Muestra ambas horas simultáneamente

CUENTA REGRESIVA (TIMER)
#v(-0.5em)

- Pantalla de temporizador para cuenta atrás
- Pulsa SET para editar duración (horas:minutos:segundos)
- Al terminar, emite alerta sonora

RETROILUMINACIÓN
#v(-0.5em)

- Pulsa LIGHT para activar luz de fondo
- Duración limitada para conservar batería

#pagebreak()

*MOVIMIENTO ANALÓGICO MIYOTA 2035*

CARACTERÍSTICAS
#v(-0.5em)

El Miyota 2035 es un movimiento de precisión de cuarzo:
- Calibre rotor de máxima confiabilidad
- Duración de batería: 24-36 meses, pila SR626SW / 377
- Frecuencia: 32.768 Hz
- Precisión: ±20 segundos/mes

AJUSTE DE HORA
#v(-0.5em)

- Tira de la corona a las 3
- Rota la corona para avanzar/retroceder la hora
- Cuando sea preciso, empuja la corona para confirmar

MANTENIMIENTO
#v(-0.5em)

- No requiere servicio especial durante 2-3 de uso normal
- No abra la tapa trasera innecesariamente (sella el reloj)

#pagebreak()

#image("ala14_back.jpeg", width: 100%, height: 50%, fit: "cover")

#place(top + left, dx: 5mm, dy: 45mm, box(width: 100% - 10mm, text(black, size: 7pt)[
Trasera protegida por zafiro

Emblema del Ala 14 a todo color
]))

#place(bottom + left, dx: 5mm, dy: -5mm, text(black, size: 7pt)[
_RSWC · Hablemos de Relojes_
])



