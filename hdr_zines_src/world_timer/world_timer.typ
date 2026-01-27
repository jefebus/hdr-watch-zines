#import "../../src/lib.typ": watch_zine

#set document(author: "HdR", title: "RSWC Super Stellar World Timer")
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
  image("world_timer_front.jpeg", width: 100%, height: 100%, fit: "cover")
  place(top + center, dy: 5mm, box(
    fill: rgb(0, 0, 0, 150),
    inset: 8pt,
    radius: 4pt,
    text(white, size: 16pt, stroke: 0.5pt + black)[
      *RSWC*\ 
      *SUPER STELLAR*\
      *WORLD TIMER*
    ]
  ))
})
#pagebreak()

*ESPECIFICACIONES TÉCNICAS*

- Acero 316L grado suizo
- Cristal zafiro con AR interno
- Tapa trasera roscada grabada
- 5 ATM (50 metros)
- Correa acero con ajuste rápido
- Módulo digital SKMEI 1338
- Funciones:
  - Hora 12/24H con calendario
  - *World Time: 28 zonas*
  - Dual time
  - Cronógrafo 1/100 segundo
  - Temporizador cuenta regresiva
  - Alarma y señal horaria
  - Retroiluminación LCD
  - Indicador batería

#pagebreak()

*LA REVOLUCIÓN DIGITAL*

El World Timer marca un hito 
histórico: el primer reloj 
completamente digital de RSWC.

Hablemos de Relojes nació como 
"risingsunwatches", dedicado a 
los relojes japoneses. Creamos 
el original "Comando G", la 
primera comunidad genuina de 
coleccionistas G-Shock en español.

Este proyecto es un regreso a 
casa. Un tributo a los legendarios 
Casio World Time que dominaron 
los años 80 y 90. Pero elevado 
con cristal de zafiro y acero 
grado suizo que ningún Casio 
digital jamás tuvo.

#pagebreak()

*28 ZONAS HORARIAS*

#text(size: 6pt)[
*UTC-12:* Eniwetok, Kwajalein\ 
*UTC-11:* Samoa, Midway\ 
*UTC-10:* Hawai, Honolulu\ 
*UTC-9:* Alaska, Anchorage\ 
*UTC-8:* Los Angeles (PST)\ 
*UTC-7:* Denver (MST)\ 
*UTC-6:* Chicago, México (CST)\ 
*UTC-5:* Nueva York, Toronto (EST)\ 
*UTC-4:* Caracas, Santiago, La Paz\ 
*UTC-3:* Buenos Aires, Sao Paulo\ 
*UTC-2:* Mid-Atlantic\ 
*UTC-1:* Azores, Cabo Verde\ 
*UTC+0:* Londres, Lisboa (GMT)\ 
*UTC+1:* Madrid, París, Roma (CET)\ 
*UTC+2:* El Cairo, Atenas, Johannesburgo\ 
*UTC+3:* Moscú, Bagdad, Nairobi\ 
*UTC+4:* Dubai, Bakú, Teherán\ 
*UTC+5:* Karachi, Tashkent\ 
*UTC+6:* Dhaka, Astana, Almaty\ 
*UTC+7:* Bangkok, Jakarta, Hanoi\ 
*UTC+8:* Hong Kong, Pekín, Singapur\ 
*UTC+9:* Tokio, Seúl, Yakutsk\ 
*UTC+10:* Sydney, Melbourne, Guam\ 
*UTC+11:* Nueva Caledonia, Magadan\ 
*UTC+12:* Auckland, Fiji, Kamchatka
]

#pagebreak()

*CONFIGURACIÓN Y USO*

BOTONES Y CONTROLES
#v(-0.5em)

- *LED/SET*: Luz EL / Ajustes
- *FUNCTION*: Cambiar modos
- *COMMAND*: Aumentar valores
- *ADJUST*: Seleccionar / Resetear

NAVEGACIÓN: FUNCTION cicla entre
HORA → ALM → CHRONO → COUNTDOWN 
→ WORLD TIME

AJUSTE HORA Y FECHA
#v(-0.5em)

- Mantén ADJUST hasta parpadeo
- FUNCTION: campo (12H/24H, seg, 
  min, hora, año, mes, día)
- COMMAND: aumentar valor
- ADJUST: confirmar (auto 3min)

#pagebreak()

*WORLD TIME Y CRONÓGRAFO*

WORLD TIME (28 ZONAS)
#v(-0.5em)

- FUNCTION hasta ciudad
- Mantén FUNCTION para selección
- COMMAND: avanzar entre 28 zonas
- FUNCTION: confirmar zona
- Muestra hora + código + dual time

CRONÓGRAFO SPL
#v(-0.5em)

- FUNCTION hasta chrono
- COMMAND: iniciar/pausar
- FUNCTION en marcha: SPL (split)
- ADJUST: resetear
- *Precisión: 1/100 seg*

#pagebreak()

*ALARMA Y TEMPORIZADOR*

ALARMA (ALM)
#v(-0.5em)

- FUNCTION hasta ALM
- Mantén ADJUST para configurar
- FUNCTION: hora/minutos
- COMMAND: activar ALM o SIG
- Suena 10s (diaria o horaria)

COUNTDOWN
#v(-0.5em)

- FUNCTION hasta countdown
- Mantén ADJUST para ajustar
- FUNCTION: H/M/S
- COMMAND: iniciar/pausar
- ADJUST: resetear
- Máx 23:59:59, alarma 10s

MANTENIMIENTO
#v(-0.5em)

- Batería CR2025 (2-3 años)
- Evitar temperatura extrema
- Limpiar con paño húmedo
- No pulsar botones bajo agua

#pagebreak()

#block({
  image("world_timer_back.jpeg", width: 100%, height: 50%, fit: "cover")
})

#place(top + left, dx: 5mm, dy: 45mm, box(width: 100% - 10mm, text(black, size: 7pt)[
La tapa trasera roscada de acero presenta grabado inspirado en 
mapas antiguos y las rutas de exploración. Un tributo a los 
viajeros que llevaron los World Timer por todo el planeta.
]))

#place(bottom + left, dx: 5mm, dy: -5mm, text(black, size: 7pt)[
_RSWC · Hablemos de Relojes_
])
