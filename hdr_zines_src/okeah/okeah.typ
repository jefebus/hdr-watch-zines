#import "../../src/lib.typ": watch_zine

#set document(author: "HdR", title: "Okeah Final Edition")
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
  image("okeah_front.jpeg", width: 100%, height: 100%, fit: "cover")
  place(top + center, dy: 3mm, box(
    fill: rgb(0, 0, 0, 150),
    inset: 8pt,
    radius: 4pt,
    text(white, stroke: 0.5pt + black)[
      #text(size: 12pt)[*Okeah Final Edition*]
    ]
  ))
})#pagebreak()

*ESPECIFICACIONES TÉCNICAS*

*Movimiento:* Poljot 3133, cronógrafo mecánico (base Valjoux 7734)

*Caja:* 39×39 mm. Acero inox. Tapa roscada grabada "Final Edition"

*Coronas:* Doble corona (hora/bisel). Pulsadores telescópicos

*Cristal:* Mineral semi-abombado

*Resistencia:* 30 m / 3 ATM

*Esfera:* Diseño original 1976. Plata y azul

*Correa:* 20 mm piel azul militar

*Edición:* 300 unidades

*Año:* 2011-2012
#pagebreak()

*ORIGEN DEL PROYECTO*

En 2011 se anunció el fin del calibre Poljot 3133 (basado en Valjoux 7734), que desde 1976 equipaba los cronógrafos rusos más míticos.

La comunidad HdR decidió actuar. El_Monitor y Nuno (nht), experto en relojería rusa, coordinaron un debate con 300 foreros.

Objetivo: homenajear el primer Poljot con calibre 3133, usando el stock final antes de su extinción.

El Okeah original de 1976 fue el elegido para este último proyecto.
#pagebreak()

*LA EDICIÓN FINAL*

HdR contactó con Volmax (propietaria de Poljot), solicitando el stock completo: 300 cajas de la edición 2006. Las últimas existentes.

Tras negociar, se fabricaron esferas, biseles y agujas según diseño 1976.

Fin de 35 años de historia (1976-2011).

Reservas agotadas en 6 días (nov 2011). Entrega junio 2012.

Proyecto internacional: HdR, FdR Italia, Watchuseek USA, Forum Montres Russes Francia.
#pagebreak()

*DETALLES TÉCNICOS*

Calibre Poljot 3133: uno de los cronógrafos más robustos. Derivado del Valjoux 7734, producido en Moscú desde 1976.

Construcción fiable: 23 rubíes, 21.600 a/h, 42h reserva.

Doble corona: una ajusta hora, otra gira bisel interno. Pulsadores telescópicos de alta gama.

Esfera fiel a 1976: índices triangulares lume, subesferas plateadas, triángulo azul en bisel.

Cada reloj inspeccionado por Juan Ramón Ancora.
#pagebreak()

*LEGADO*

Cierre definitivo de una era en relojería rusa. Stock 3133 agotado.

Poder de comunidad: 300 foreros de 4 países. 

Grabado "Final Edition" en trasera. Último Okeah jamás fabricado.

Sorpresas: gorros polares rusos con pins Poljot, caja especial cartón/geltex.

Reloj con alma, hecho por y para nosotros.
#pagebreak()

*INSTRUCCIONES DE USO*

*Corona superior:* Gira bisel interno graduado (cuenta regresiva).

*Corona inferior:*
- Pos. 0 (apretada): marcha
- Pos. 1: ajuste hora

*Pulsadores:*
- Superior: Start/Stop
- Inferior: Reset (parado)

*Cuerda:* Manual diaria, 25-30 vueltas. No forzar.

*Mantenimiento:* Revisión cada 3-4 años.

*Agua:* 30 m. Salpicaduras.

*Cronógrafo histórico. Respétalo.*
#pagebreak()

// back cover
#block({
  image("okeah_back.jpeg", width: 100%, height: 50%, fit: "cover")
})

#place(top + left, dx: 5mm, dy: 45mm, box(width: 100% - 10mm, text(black, size: 7pt)[
Okeah Final Edition (2011-2012) cierra 35 años de historia del Okeah y calibre 3133. 300 unidades. Sin lucro, por pasión.
]))

#place(bottom + left, dx: 5mm, dy: -5mm, text(black, size: 7pt)[
_Hablemos de Relojes_
])
