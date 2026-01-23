#import "../src/lib.typ": watch_zine

#set document(author: "HdR", title: "RSWC Supersharkomatic")
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
  image("supersharkomatic_front.jpeg", width: 100%, height: 100%, fit: "cover")
  place(top + center, dy: 5mm, box(
    text(white, stroke: 0.5pt + black)[
      #text(size: 20pt)[*RSWC*]\ 
      #text(size: 16pt)[*Supersharkomatic*]
    ]
  ))
})
#pagebreak()

*ESPECIFICACIONES TÉCNICAS*
- Caja en acero 316L de 41 mm
- Lug to lug: 46,5 mm
- Tapa a rosca con grabado *oil press* (en relieve)
- Corona a rosca
- Bisel de aluminio bi-direccional, 120 pasos
- Movimiento automático PT5000 (clon ETA 2824-2)
- Cristal de zafiro sobredimensionado con triple AR interno
- Esfera y agujas con Super-LumiNova Swiss C3 (verde)
- Correa Tropic FKM
- Resistencia al agua: 200 metros
- Estuche: cofrecito negro clásico RSWC
- Serie limitada: 150 unidades (agotada)
- Precio final: 220 € (aduanas incluidas)

#pagebreak()

*DESCRIPCIÓN DEL RELOJ*

El RSWC Supersharkomatic es un diver forero diseñado desde cero para rendir homenaje a un reloj de buceo
icónico del cine de 1975. Mantiene estética setentera reconocible, actualizada con materiales modernos.

La caja de 41 mm en acero 316L con corona y tapa roscadas refuerza su carácter de herramienta. El cristal
de zafiro sobredimensionado con triple antirreflejo aporta legibilidad, mientras que el bisel de aluminio
de 120 pasos completa la experiencia "vintage-pro".

Dos configuraciones: *Cyclops "Original"* (con lupa) y *"Standard"* (sin lupa), para elegir entre el guiño
histórico o una lectura más limpia.

#pagebreak()

*UN DIVER DE AUTOR*

Este reloj nace dentro de HdR como proyecto sin ánimo de lucro por amor a la relojería. La idea surge
de una conversación informal entre foreros ("noche de WhatsApp" convertida en fenómeno social), y crece
gracias a las reservas en firme y coordinación colectiva.

No es catálogo ni "encargo a fábrica": es pieza 100% RSWC, con decisiones de diseño tomadas por y para
la comunidad, con apoyo de Astar para materializarlo con calidad al precio más ajustado.

Resultado: uno de los modelos con mayor demanda en la historia de la marca, en tirada limitada ya agotada.

#pagebreak()

*DISEÑO Y HERENCIA*

Supersharkomatic no pretende copiar: interpreta. Parte del "oscuro reloj" del oceanógrafo de la película
de 1975 y lo adapta a los gustos actuales, manteniendo el espíritu de los divers clásicos.

El conjunto se apoya en proporciones contenidas (41 mm), lug-to-lug equilibrado (46,5 mm) y caja fabricada
en 316L. El bisel bi-direccional de 120 pasos aporta tacto preciso, mientras que la opción con o sin
*cyclops* refuerza el juego entre fidelidad y preferencia personal.

La trasera roscada con grabado en relieve remata el carácter de herramienta RSWC.

#pagebreak()

*LUMEN Y FUNCIONALIDAD*

La elección de Super-LumiNova Swiss C3 (verde) garantiza una lectura clara en condiciones de poca luz,
con una estética muy acorde a los divers clásicos.

En el apartado técnico, el cristal de zafiro sobredimensionado con triple AR interno mejora la visibilidad
y reduce reflejos, mientras que la estanqueidad de 200 m, la corona a rosca y la tapa roscada completan un
conjunto preparado para agua y uso intensivo.

La correa Tropic en FKM aporta comodidad, resistencia y el look retro que define el proyecto, con una
sensación más moderna que la goma tradicional.

#pagebreak()

*INSTRUCCIONES DE USO*

El calibre PT5000 es automático: se carga con el movimiento de la muñeca y admite carga manual girando la
corona (20–30 vueltas si está parado).

*Ajuste de hora y fecha:* desenroscar la corona y tirar al primer punto para cambiar fecha; al segundo para
ajustar hora. Evita ajustar la fecha entre 21:00–03:00.

*Mantenimiento:* tras uso en agua, enjuagar con agua dulce. Revisión de estanqueidad periódica; servicio
completo cada 4–5 años para mantener precisión.


#pagebreak()

#image("supersharkomatic_back.jpeg", width: 100%, height: 50%, fit: "cover")

#place(top + left, dx: 5mm, dy: 45mm, box(width: 100% - 10mm, text(black, size: 7pt)[
Proyecto comunitario RSWC (HdR). Serie limitada de 150 unidades, con dos variantes: *Cyclops “Original”* y
*Standard*. Precio final 220 € con aduanas incluidas.
]))

#place(bottom + left, dx: 5mm, dy: -5mm, text(black, size: 7pt)[
_RSWC · Hablemos de Relojes_
])
