#import "../../src/lib.typ": watch_zine

#set document(author: "HdR", title: "Gagarin Poyejali")
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
  image("gagarin_poyejali_front.jpeg", width: 100%, height: 100%, fit: "cover")
  place(top + center, dy: 3mm, box(
    fill: rgb(0, 0, 0, 150),
    inset: 8pt,
    radius: 4pt,
    [
      #text(white, size: 12pt, stroke: 0.5pt + black)[*RSWC*]\ 
      #text(white, size: 10pt, stroke: 0.5pt + black)[*Gagarin ¡Poyejali!*]
    ]
  ))
})
#pagebreak()

*ESPECIFICACIONES TÉCNICAS*

- Marca: RSWC
- Modelo: Gagarin ¡Poyejali!  
- Movimiento: Poljot 2609 manual
- Caja: Acero 38mm
- Grosor: 11.5mm
- Correa: 18mm
- Año proyecto: 2021
- 60 Aniversario: 12 abril 1961-2021
- Fabricante: Astar
- Homenaje: Yuri Gagarin
#pagebreak()

*¡POYEJALI! 12 ABRIL 1961*

08:07 hora española, cosmódromo Baikonur. Yuri 
Gagarin saluda con legendario "¡Poyejali!" (¡Vámonos!) 
antes despegar. Vostok 1 abandona Tierra rumbo 
espacio exterior.

108 minutos históricos. Gagarin primer humano 
experimentar ingravidez, contemplar Tierra desde 
órbita. Cápsula diminuta, tecnología primitiva, 
probabilidad supervivencia 50%.

Reentrada crítica: cápsula gira descontrolada, 
temperaturas extremas. Gagarin eyecta último momento, 
aterriza paracaídas. URSS gana carrera espacial. 
60 años después, HdR honra legado.

#pagebreak()

*PRIMAVERA ESPACIAL 2021*

60 aniversario marca hito histórico trascendental. 
12 abril 1961: día que humanidad rompió cadenas 
gravitatorias y contempló Tierra desde las estrellas. 
Hazaña imposible convertida en realidad.

Proyecto homenaje tres cosmonautas pioneros: Gagarin 
(primer hombre espacio), Leonov (primer paseo espacial), 
Komarov (primer cosmonauta caído en misión). Cada 
uno simboliza valentía extrema programa espacial soviético.

Cronógrafos manuales inspirados Strela históricos 
usados misiones reales. Estética auténtica años 60: 
pulsadores rectangulares, cajas vintage, diales 
granulados. Conexión directa herencia espacial USSR.

#pagebreak()

*MOVIMIENTO POLJOT 2609*

El Poljot 2609 representa cumbre relojería soviética. 
Movimiento manual, herencia directa cronógrafos Strela 
utilizados programa espacial USSR años 60.

Calibre robusto soportar condiciones extremas. 
Frecuencia 19.800 A/h. Construcción simple típica 
ingeniería soviética: pocas piezas, máxima durabilidad.

Poljot (Полёт = Vuelo) manufacturaba relojes 
cosmonautas. Continuación tradición Strela originales. 
Conexión directa historia espacial en tu muñeca.

#pagebreak()

*ESTÉTICA STRELA HISTÓRICA*

Inspiración cronógrafos Strela (Стрела = Flecha) 
cosmonautas soviéticos. Pulsadores rectangulares, 
dial funcional, subesferas contraste máximo.

Caja 38mm dimensión clásica años 60, grosor 11.5mm, 
correa 18mm: vintage auténtico perfectamente 
proporcionado sin exageración.

BGW9 lume color crema envejecido. Agujas metálicas 
pulidas. Esfera granulada textura profunda. Corona 
firmada RSWC. Trasera grabada: emblemas soviéticos, 
fechas misión, texto cirílico.

#pagebreak()

*INSTRUCCIONES DE USO*

*Carga manual:* Girar corona sentido horario 30-40 
vueltas hasta resistencia. NO forzar. Reserva aproximada 
40 horas. Cuerda diaria recomendada.

*Cronógrafo:* Pulsador superior inicia/detiene medición. 
Pulsador inferior resetea agujas a cero. Usar cronógrafo 
solo con reloj en marcha. Agujas cronógrafo deben estar 
a cero antes iniciar nueva medición.

*Ajuste hora:* Tirar corona completamente. Girar para 
ajustar. NO ajustar fecha entre 21:00-03:00 (daña 
mecanismo). Empujar corona al terminar.

*Mantenimiento:* Revisión cada 3-5 años. Evitar campos 
magnéticos intensos. No golpear pulsadores.

#pagebreak()

// back cover
#block({
  image("gagarin_poyejali_back.jpeg", width: 100%, height: 50%, fit: "cover")
})

#place(top + left, dx: 5mm, dy: 45mm, box(width: 100% - 10mm, text(black, size: 7pt)[
El RSWC Gagarin ¡Poyejali! conmemora 60 aniversario 
primer vuelo espacial humano. 12 abril 1961: Yuri 
Gagarin saluda "¡Vámonos!" y despega Vostok 1. 
]))

#place(bottom + left, dx: 5mm, dy: -5mm, text(black, size: 7pt)[
_RSWC · Hablemos de Relojes_
])
