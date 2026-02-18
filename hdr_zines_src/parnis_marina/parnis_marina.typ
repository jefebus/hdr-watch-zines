#import "../../src/lib.typ": watch_zine

#set document(author: "HdR", title: "Parnis Marina Militare")
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
  image("parnis_marina_front.jpeg", width: 100%, height: 100%, fit: "cover")
  place(top + center, dy: 3mm, box(
    fill: rgb(0, 0, 0, 150),
    inset: 8pt,
    radius: 4pt,
    [
      #text(white, size: 12pt, stroke: 0.5pt + black)[*Parnis*]\ 
      #text(white, size: 10pt, stroke: 0.5pt + black)[*Marina / Marina Militare*]
    ]
  ))
})
#pagebreak()

*ESPECIFICACIONES TÉCNICAS*

- Modelos: X002 (dial blanco), X014 (dial negro)
- Movimiento: Seagull ST-2542 manual decorado
- Caja: Acero 316L
- Trasera: Vista con aro metálico
- Correa: Símil piel negra
- Reserva: Indicador de marcha visible
- Dial: Personalizado HdR
- Año: 2009
#pagebreak()

*INSPIRACIÓN ITALIANA CLÁSICA*

Junio 2009: nace proyecto Parnis Marina/Marina 
Militare. Inspiración directa relojes Panerai 
italianos Marina Militare. Estética militar 
mediterránea con alma asiática.

Diseño minimalista elegante: números arábigos grandes, 
pequeños segundos a las 9, triángulo a las 12. 
Manecillas espada características. Proporciones 
heredadas modelos italianos históricos.

Personalización HdR logró dial único sin perder 
esencia original. Compra conjunta democratizó acceso 
estética premium marina militar mediante producción 
coordinada desde Asia.

#pagebreak()

*MOVIMIENTO SEAGULL ST-2542*

El ST-2542 representa cumbre ingeniería relojera 
china años 2000. Basado en ETA 6497 suizo, fabricado 
íntegramente en Tianjin Seagull Watch Factory. 
Movimiento manual cuerda, 17 rubíes, 18.000 A/h.

Decoración perlado visible: puente principal con 
Côtes de Genève modificado. Tornillos azulados, 
grabado "Seagull". Reserva 42 horas. Calibre robusto 
fiable diseñado servicio prolongado.

Trasera vista permite admirar mecánica completa. 
Aro metálico garantiza estabilidad con golpes. 
Volante grande visible oscilando. Hipnótico 
espectáculo mecánico accesible.

#pagebreak()

*PANERAI Y MARINA MILITARE*

Antes Segunda Guerra Mundial, Marina Militare italiana 
necesitaba relojes sumergibles precisos. Panerai 
recibió encargo fabricar instrumentos funcionales 
para comandos submarinos.

Radiomir original 1936: caja cushion característica, 
números sandwich luminosos, cristal fijo sin bisel. 
Diseño revolucionario dictado por función pura: 
legibilidad máxima oscuridad total submarina.

Legado Panerai inspira incontables homenajes. Parnis 
Marina captura esencia diseño histórico: proporciones 
auténticas, dial minimalista, manecillas espada. 
Acceso democratizado a icono relojero italiano.

#pagebreak()

*DIAL PERSONALIZADO HdR*

Diseño ganador votado comunidad. Logotipo HdR 
integrado sutilmente sin romper armonía italiana 
original. Tipografía serif elegante, posicionamiento 
equilibrado.

Dos versiones: dial blanco puro contraste máximo, 
dial negro elegante militar. Ambas comparten diseño 
personalización idéntico. Color tinta ajustado 
según fondo para legibilidad perfecta.

Pequeños segundos a las 9 con números 15-30-45-60. 
Triángulo luminoso a las 12. Manecillas espada 
anchas con superlume. Estética militar funcional 
pura: nada superfluo, todo necesario.

#pagebreak()

*INSTRUCCIONES DE USO*

*Carga manual:* Girar corona sentido horario hasta 
sentir resistencia (NO forzar). 30-40 vueltas carga 
completa. Reserva 42 horas. Dar cuerda diariamente 
mismo horario.

*Ajuste hora:* Tirar corona una posición. Girar para 
ajustar hora. Empujar corona al terminar.

*Pequeños segundos:* Subesfera a las 9 muestra segundos. 
Permite verificar reloj funcionando observando oscilación 
constante.

*Trasera vista:* Admirar movimiento sin abrir. Evitar 
golpes. Limpiar cristal trasero con paño suave.

#pagebreak()

// back cover
#block({
  image("parnis_marina_back.jpeg", width: 100%, height: 50%, fit: "cover")
})

#place(top + left, dx: 5mm, dy: 45mm, box(width: 100% - 10mm, text(black, size: 7pt)[
 Inspirado en clásicos italianos 
Panerai Marina Militare. Movimiento Seagull ST-2542.
]))

#place(bottom + left, dx: 5mm, dy: -5mm, text(black, size: 7pt)[
_Parnis · Hablemos de Relojes_
])
