#import "../../src/lib.typ": watch_zine

#set document(author: "HdR", title: "Galeno · Cronógrafo médico")
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
  image("galeno_front.jpeg", width: 100%, height: 100%, fit: "cover")
  place(top + center, dy: 5mm, box(
    text(white, stroke: 0.5pt + black)[
      #text(size: 20pt)[*GALENO*]\ 
      #text(size: 14pt)[*Cronógrafo médico*]
    ]
  ))
})
#pagebreak()

*ESPECIFICACIONES TÉCNICAS*
- Edición numerada para HdR: 300 unidades
- Caja de acero 316L de 42 mm, acabado mixto (pulido/cepillado)
- Hermeticidad: 5 ATM
- Cristal frontal: zafiro abombado con tratamiento antirreflejos
- Trasera roscada vista de zafiro
- Movimiento: cronógrafo bicompax Seagull ST-1901
- Dial blanco mate, impreso a 3 colores y acabado esmaltado 
- Agujas tipo Dornblüth, azuladas térmicamente
- Corona convexa grabada
- Pulsadores de crono de cabeza plana
- Correa de piel marrón símil coco (22/20 mm)
- Estuche en polipiel negro “GALENO”

#pagebreak()

*DESCRIPCIÓN DEL RELOJ*

“Galeno” es un cronógrafo mecánico inspirado en los relojes
médicos clásicos, aquellos que incorporaban escalas para medir
pulsaciones y respiración de forma rápida y precisa.

Su estética es inequívocamente vintage: esfera clara, doble
contador bicompax y un conjunto de escalas que convierten el
reloj en una auténtica herramienta de consulta.

La caja de 42 mm y el zafiro abombado le dan presencia y
profundidad, mientras que las agujas azuladas aportan el toque
tradicional que remata el conjunto.

Es, en esencia, un homenaje funcional a la relojería médica, pensado para uso real.

#pagebreak()

*UN PROYECTO DE FORO, CON COMPROMISO*

Galeno nace dentro de la comunidad de HdR como un proyecto
colectivo: se define el concepto, se debate el diseño y se
financia la fabricación mediante reservas de los participantes.

El propio hilo oficial insiste en la importancia del compromiso:
reservar implica aceptar condiciones de plazos, pagos y el
funcionamiento solidario del proyecto, asumiendo que pueden
surgir ajustes y retrasos durante el desarrollo.

El resultado es un reloj “de casa”, hecho con paciencia,
consenso y mucha ilusión compartida.

#pagebreak()

*DISEÑO Y DETALLES CON CARÁCTER*

La identidad del Galeno está en los matices: impresión a tres
colores sobre un dial mate, acabado esmaltado y una lectura
muy “de época” gracias al contraste entre escalas y tipografías.

Las agujas tipo Dornblüth, azuladas al calor, refuerzan el aire
clásico y mejoran la legibilidad sobre fondo blanco.

La caja alterna zonas pulidas y cepilladas, y la trasera vista
con zafiro y grabados sirve como sello de pertenencia a la
edición numerada del foro.

Corona grabada, pulsadores planos y hebilla personalizada
completan un conjunto coherente: herramienta, homenaje y
pieza de colección a la vez.

#pagebreak()

*MOVIMIENTO Y EXPERIENCIA DE USO*

El Seagull ST-1901 es un cronógrafo de carga manual en
configuración bicompax: dos subesferas, puesta a cero directa
y el placer mecánico del cuerda-a-mano.

El accionamiento del crono es firme y satisfactorio; la ventana
trasera permite disfrutar del calibre en funcionamiento, algo
muy buscado en este tipo de relojes.

*Uso recomendado:*
- Dar cuerda diariamente (sin forzar al final del recorrido).
- Accionar pulsadores con el reloj puesto y la muñeca estable.
- Evitar golpes fuertes y exposición prolongada al agua pese a
  la estanqueidad (5 ATM).

#pagebreak()

*MANUAL DE USO DEL ASMÓMETRO Y PULSÓMETRO*

El Pulsómetro permite medir la frecuencia cardíaca. 

Ponga en marcha el cronometraje, y cuando haya contado 15 pulsaciones, párelo. 
La aguja trotadora señalará una cifra en la escala pulsométrica roja, que indica la frecuencia cardíaca de la persona en pulsaciones por minuto (pul/min).

El Asmómetro, permite medir la frecuencia respiratoria.

Ponga en marcha el cronometraje, y cuando haya contado 5 respiraciones, párelo. 
La aguja trotadora señalará una cifra en la escala asmométrica azul, que indica la frecuencia respiratoria de la persona en respiraciones por minuto (res/min)

#pagebreak()

#image("galeno_back.jpeg", width: 100%, height: 50%, fit: "cover")

#place(top + left, dx: 5mm, dy: 45mm, box(width: 100% - 10mm, text(black, size: 7pt)[
Trasera vista con cristal de zafiro y calibre a la vista, grabados
y numeración de la edición. Un cronógrafo médico nacido del
debate y la ilusión de la comunidad HdR.
]))

#place(bottom + left, dx: 5mm, dy: -5mm, text(black, size: 7pt)[
_Galeno · Proyecto HdR_
])
