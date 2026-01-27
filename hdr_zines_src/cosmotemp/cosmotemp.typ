#import "../../src/lib.typ": watch_zine

#set document(author: "HdR", title: "RSWC Super Stellar Cosmotemp")
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
  image("cosmotemp_front.jpeg", width: 100%, height: 100%, fit: "cover")
  place(top + center, dy: 5mm, box(
    fill: rgb(0, 0, 0, 150),
    inset: 8pt,
    radius: 4pt,
    text(white, size: 16pt, stroke: 0.5pt + black)[
      *RSWC*\ 
      *SUPER STELLAR*\
      *COSMOTEMP*
    ]
  ))
})
#pagebreak()

*ESPECIFICACIONES TÉCNICAS*

- Caja de acero 316L grado suizo
- Cristal de zafiro con AR interno
- Tapa trasera roscada grabada
- Impermeabilidad: 5 ATM (50 metros)
- Correa de acero sólido con ajuste rápido
- Módulo digital SKMEI 2198
- Funciones digitales completas:
  - Hora, minutos, segundos (12/24H)
  - Calendario completo (año/mes/semana/día)
  - *Termómetro: -10°C a +50°C*
  - *Cronógrafo a 1/1000 segundo*
  - Dual time (segunda zona horaria)
  - Alarma y señal horaria
  - Temporizador cuenta regresiva
  - Retroiluminación LCD
  - Indicador batería baja

#pagebreak()

*PRIMER DIGITAL RSWC*

El Cosmotemp marca un hito 
histórico: el primer reloj 
completamente digital de RSWC.

Nacido en el foro Hablemos de 
Relojes, heredero directo de 
"risingsunwatches" y creador 
del original "Comando G", la 
primera comunidad genuina de 
coleccionistas G-Shock.

Este proyecto representa el 
regreso a las raíces: celebrar 
los relojes japoneses que nos 
enamoraron. Un tributo a los 
Casio digitales clásicos, pero 
con materiales premium que 
ningún Casio tuvo jamás.

#pagebreak()

*HOMENAJE A LOS AÑOS 80*

Los digitales de los 80 fueron 
revolucionarios. Casio World Time, 
Databank, los primeros Citizen 
Ana-Digi-Temp: tecnología del 
futuro en tu muñeca.

El Cosmotemp recupera esa magia 
con función termómetro (-10°C a 
+50°C) y cronógrafo de precisión 
milimétrica (1/1000 segundo).

Pero lo eleva: cristal de zafiro 
irrayable, acero grado suizo, 
construcción robusta. La nostalgia 
mejorada. El futuro que soñamos, 
construido con calidad presente.

#pagebreak()

*MÓDULO DIGITAL SKMEI 2198*

BOTONES Y CONTROLES
#v(-0.5em)

- *LIGHT*: Mantener luz
- *MODE*: Cambiar modo 
- *SELECT-START/STOP*: Ajustar
- *SPT.RE.SET*: Avanzar campos

MODOS: T1 → DATE → ALM → T2 → SW

AJUSTE HORA Y FECHA
#v(-0.5em)

- MODE hasta T1 (hora)
- SELECT-START/STOP: ajustar
- SPT.RE.SET: avanzar
- Confirmar MODE (o 3s)

TERMÓMETRO
#v(-0.5em)

- Diales A1 y A2
- SELECT-START/STOP: activar
- Retirar 15min precisión
- -10°C a +50°C (±1°C)

#pagebreak()

*FUNCIONES PRINCIPALES*

CRONÓGRAFO (SW)
#v(-0.5em)

- MODE hasta SW
- SELECT-START/STOP: iniciar/pausar
- SPT.RE.SET: SPL (split) o resetear
- *Precisión: 1/1000 seg*

DUAL TIME (T2)
#v(-0.5em)

- MODE hasta T2
- Ajustar como T1 (hora principal)
- SELECT-START/STOP y SPT.RE.SET: cambiar

ALARMA (ALM)
#v(-0.5em)

- MODE hasta ALM
- SELECT-START/STOP: activar/desactivar
- Ajustar hora con botones
- CHI: señal horaria

#pagebreak()

*OTRAS FUNCIONES*

TEMPORIZADOR
#v(-0.5em)

- MODE hasta timer
- SELECT-START/STOP y SPT.RE.SET: ajustar
- SELECT-START/STOP: iniciar/pausar

CALENDARIO (DATE)
#v(-0.5em)

- MODE hasta DATE
- Automático hasta 2099
- Reconoce años bisiestos

RETROILUMINACIÓN
#v(-0.5em)

- Mantener SPT.RE.SET/LIGHT
- Duración ~3 segundos

BATERÍA
#v(-0.5em)

- CR2016 o CR2025
- Vida: 1-2 años

#pagebreak()

#block({
  image("cosmotemp_back.jpeg", width: 100%, height: 50%, fit: "cover")
})

#place(top + left, dx: 5mm, dy: 45mm, box(width: 100% - 10mm, text(black, size: 7pt)[
La tapa trasera roscada de acero presenta grabado cósmico inspirado 
en los viajes espaciales y la exploración científica. Un tributo a 
la era donde los digitales representaban el futuro tecnológico.
]))

#place(bottom + left, dx: 5mm, dy: -5mm, text(black, size: 7pt)[
_RSWC · Hablemos de Relojes_
])
