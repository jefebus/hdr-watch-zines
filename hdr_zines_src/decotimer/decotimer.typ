#import "../../src/lib.typ": watch_zine

#set document(author: "HdR", title: "RSWC Deco-Timer")
#set text(font: "Carlito", size: 7pt, lang: "es")
#set page("a4")

#show heading.where(level: 1): hd => {
  pad(top: 2em, text(10em, align(center, hd.body)))
}

#show: watch_zine.with(
  digital: json(bytes(sys.inputs.at("digital", default: "false"))),
  draw-border: true
)

// Página 1 - Portada
#block({
  image("decotimer_front.jpeg", width: 100%, height: 100%, fit: "cover")
  place(top + center, dy: 5mm, box(
    fill: rgb(0, 0, 0, 150),
    inset: 8pt,
    radius: 4pt,
    text(white, size: 20pt, stroke: 0.5pt + black)[
      *RSWC*\ 
      *DECO-TIMER*
    ]
  ))
})
#pagebreak()

// Página 2 - Especificaciones técnicas
*ESPECIFICACIONES TÉCNICAS*

*Caja:* Acero 316L Swiss Grade.
Doble corona roscada con lumen
C3. 42mm × 49mm × 14.8mm. 200m.

*Cristal:* Doble zafiro domed con
tratamiento antirreflectante.

*Bisel:* Interno giratorio con
superluminova C3, escala deco.

*Calibre:* PT5000 automático y
cuerda manual. 28.800 VPH, 25
rubíes. Certificación Glashütte.

*Variantes:* Challenger Deep
(esfera azul) y Devil's Eye
(esfera negra/roja).

*Trasera:* Grabado oil press con
profundidad 10.929m o pez
linterna luminoso.
#pagebreak()

// Página 3 - Historia: Puente de Brooklyn
*EL PUENTE DE BROOKLYN*

Nueva York, 1870s. John Roebling
diseña el mayor puente colgante
del mundo: 1825m uniendo
Manhattan y Brooklyn.

Los trabajadores usaban arcones
neumáticos bajo el agua,
presurizados para excavar los
cimientos. Condiciones extremas:
calor sofocante, presiones
elevadas, iluminación precaria.

Apareció una enfermedad
misteriosa: "Bends". Los obreros
se doblaban del dolor al ascender
demasiado rápido. Era el síndrome
de descompresión, la enfermedad
de Caisson. Causó casi 30 muertes
en 14 años de construcción.
#pagebreak()

// Página 4 - Descompresión en buceo
*DESCOMPRESIÓN Y BUCEO*

Paul Bert (1870s) descubrió la
causa: nitrógeno en burbujas al
subir rápido. Las tablas de
descompresión se simplificaron
usando múltiplos de 10 pies (3m).

Velocidad máxima de ascenso: 60
pies/min (18m/min). Primera
parada: 12m de profundidad.

El límite No Descompresión (NDL)
marca el tiempo máximo a cada
profundidad antes de "entrar en
deco" y necesitar paradas
obligatorias de seguridad durante
el ascenso.

Las tablas deco guían al buzo
para eliminar el nitrógeno
acumulado de forma segura.
#pagebreak()

// Página 5 - Exploración oceánica
*CONQUISTA DEL OCÉANO*

Expedición Challenger (1872-76):
circunnavegó el mundo, descubrió
4700 especies. Halló la Fosa de
las Marianas, el punto más
profundo: casi 11.000m.

El hombre ha explorado solo el 5%
de los océanos. La zona abisal
(4000-6000m) carece de luz, con
temperaturas de 2-5°C y enormes
presiones.

17.000 especies abisales conocidas,
5700 a más de 1000m. Un 80-90%
son nuevas para la ciencia. La
bioluminiscencia es clave para
su supervivencia.
#pagebreak()

// Página 6 - Las dos variantes
*CHALLENGER DEEP & DEVIL'S EYE*

*Challenger Deep:* Esfera azul
profundo que evoca las fosas
abisales. Trasera grabada con el
relieve del fondo oceánico y la
profundidad máxima: 10.929m.

*Devil's Eye:* Esfera negra con
escala deco colorida clásica.
Trasera con pez linterna
(Centrophryne spinulosa), el
depredador abisal que atrae
presas con su apéndice luminoso
dorado.

Ambos: movimiento PT5000
certificado, doble zafiro domed,
lumen en bisel y coronas, caja
cushion Swiss grade exclusiva.
#pagebreak()

// Página 7 - Instrucciones de uso
*INSTRUCCIONES DE USO*

*Carga:* Corona a las 4. Desenroscar
girando hacia arriba. Remonte manual:
20-30 vueltas en sentido horario.
El automático carga con el
movimiento de la muñeca.

*Ajuste hora:* Desenroscar corona,
tirar suavemente. Primera posición
ajusta fecha (girar horario).
Segunda posición ajusta hora.
Nunca ajustar fecha entre 21h-3h.

*Bisel deco:* Corona a las 2 rota
el bisel interno. Permite marcar
tiempos de descompresión o
inmersión según tablas de buceo.

*Sumergibilidad:* 200m (20 ATM).
Verificar coronas bien roscadas
antes de inmersión.
#pagebreak()

// Página 8 - Contraportada
#block({
  image("decotimer_back.jpeg", width: 100%, height: 50%, fit: "cover")
})

#place(top + left, dx: 5mm, dy: 45mm, box(width: 100% - 10mm, text(black, size: 7pt)[
El RSWC Deco-Timer rinde homenaje a los relojes de buceo clásicos con escala de
descompresión de los años 60-70. Su caja cushion exclusiva, cristal doble domed y
calibre certificado PT5000 ofrecen la máxima calidad. 
]))

#place(bottom + left, dx: 5mm, dy: -5mm, text(black, size: 7pt)[
_RSWC · Hablemos de Relojes_
])
