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
  place(top + center, dy: 3mm, box(
    fill: rgb(0, 0, 0, 150),
    inset: 8pt,
    radius: 4pt,
    text(white, stroke: 0.5pt + black)[
      #text(size: 12pt)[*RSWC*]\ 
      #text(size: 10pt)[*Super Stellar*]\ 
      #text(size: 10pt)[*Ala 14*]
    ]
  ))
})#pagebreak()

*ESPECIFICACIONES TÉCNICAS*

- Titanio grado 2 con DLC
- Diámetro: 48 mm
- Lug to lug: 52 mm
- Ancho de asas: 24 mm
- Cristal frontal: Zafiro con AR azul
- Cristal trasero: Zafiro
- Esfera azul tono Aerospace
- Full Super Luminova Swiss azul
- Bisel interno bidireccional (corona 9h)
- Impermeabilidad: 100 metros (10 bar)
- Coronas roscadas
- Correa NATO gris
- Módulo digital SKMEI 2049
- Módulo analógico Miyota 2035
- Baterías: CR2025 + SR626SW

#pagebreak()

*DESCRIPCIÓN E INSPIRACIÓN*

El RSWC Super Stellar Ala 14 nace como un instrumento de vuelo 
moderno y fiable para pilotos de combate del Ala 14 del Ejército 
del Aire y del Espacio.

La caja de titanio ofrece ligereza excepcional sin sacrificar 
resistencia estructural. El tratamiento DLC (Diamond-Like Carbon) 
añade dureza extrema contra fricción y rayaduras.

Módulo Híbrido: El Skmei 2049 proporciona funciones digitales 
críticas (alarma, cronógrafo split, dual time, cuenta regresiva) 
mientras que el Miyota 2035 garantiza precisión analógica incluso 
bajo fuerzas G extremas de hasta 9G en la cabina del Typhoon.

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

BOTONES
#v(-0.5em)

- Superior izq: LIGHT, der: START
- Inferior izq: MODE, der: RESET

HOME Y AJUSTE DE HORA
#v(-0.5em)

- Mantén RESET 3 seg. en modo hora para configurar
- MODE selecciona (segundo/minuto/hora/año/mes/día)
- START ajusta valores

ALARMA
#v(-0.5em)

- Mantén RESET 3 seg. para configurar
- MODE selecciona campo, START ajusta
- Activa/desactiva con RESET en modo alarma

CRONÓGRAFO
#v(-0.5em)

- START: iniciar/pausar
- RESET: split (activo) o reiniciar (parado)

#pagebreak()

*MÓDULO DIGITAL (CONTINUACIÓN)*

HORA DUAL
#v(-0.5em)

- Accede con MODE hasta Dual Time
- Mantén RESET 3 seg. para configurar
- MODE selecciona, START ajusta
- Muestra ambas zonas horarias simultáneamente

TIMER (CUENTA REGRESIVA)
#v(-0.5em)

- Accede con MODE hasta Timer
- Mantén RESET 3 seg. para configurar
- MODE selecciona segundo/minuto/hora, START ajusta
- START inicia/pausa cuenta atrás

OTROS
#v(-0.5em)

- LIGHT: retroiluminación de fondo
- Batería CR2025 (3V, duración 2-3 años)

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



