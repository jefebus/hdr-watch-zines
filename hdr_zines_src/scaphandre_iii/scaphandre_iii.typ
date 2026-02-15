#import "../../src/lib.typ": watch_zine

#set document(author: "HdR", title: "RSWC Scaphandre III")
#set text(font: "Carlito", size: 7pt, lang: "es")
#set page("a4")

#show heading.where(level: 1): hd => {
  pad(top: 2em, text(10em, align(center, hd.body)))
}

#show: watch_zine.with(
  digital: json(bytes(sys.inputs.at("digital", default: "false"))),
  draw-border: true
)

// Portada
#block({
  image("scaphandre_iii_front.jpeg", width: 100%, height: 100%, fit: "cover")
  place(top + center, dy: 3mm, box(
    fill: rgb(0, 0, 0, 150),
    inset: 8pt,
    radius: 4pt,
    [
      #text(white, size: 12pt, stroke: 0.5pt + black)[*RSWC*]\ 
      #text(white, size: 10pt, stroke: 0.5pt + black)[*Scaphandre III*]
    ]
  ))
})
#pagebreak()

// Especificaciones técnicas
*ESPECIFICACIONES TÉCNICAS*

- Modelo: Scaphandre III
- Base: Steeldive SD1985
- Caja: acero 316L Turtle
- Diámetro: 44 mm
- Grosor: 13,85 mm
- L2L: 50 mm / Paso: 22 mm
- Bisel cerámico azul
- Cristal zafiro AR interno
- Hermeticidad: 1200 m
- Movimiento: Seiko NH35
- Lumen: BGW9 azul
- Corona roscada 4h
- Brazalete Superengineer
- Extra: 2 correas goma
#pagebreak()

// Historia
*TRILOGÍA SCAPHANDRE*

2021: Scaphandre I. Homenaje
Omega Ploprof 600. 56 mm,
forma masiva. Espíritu 70.

2022: Scaphandre II. Inspirado
Seamaster 1000. 45 mm
monobloque. 1000m, equipo
Cousteau.

2023: Scaphandre III. Cierre
de la saga. 44 mm Turtle.
1200m, equilibrio perfecto.

Tres capítulos. Una pasión:
el abismo.
#pagebreak()

// Diseño
*DISEÑO TURTLE*

La caja Turtle evoca las
formas orgánicas de los
divers japoneses clásicos.
Curvas suaves, protección
natural de corona a las 4.

Dial azul profundo con índices
aplicados y agujas anchas.
Fecha a las 3 enmarcada.

Bisel cerámico azul con
marcas luminosas BGW9 en todo
el perímetro. Inserto con
números cada 10 minutos.

Cristal zafiro abombado con
AR interno. Refleja la luz
como superficie del agua.

Brazalete Superengineer: eslabones
sólidos, cierre deployante.
#pagebreak()

// Profundidad
*1200 METROS*

Récord escafandra: 332m
(Ahmed Gabr, 2014). Récord
apnea: 253m (Herbert Nitsch).

Los 1200m superan todo
límite humano. ¿Por qué?
Margen de seguridad
ingenieril.

A 40m recreativos, el reloj
trabaja al 3%. Sobre-diseño
para décadas.

NH35: 21.600 vph, 41h
reserva. Juntas triple
grosor. Un Scaphandre no
falla.
#pagebreak()

// Proyecto
*EL CIERRE DE LA SAGA*

Tres años, tres relojes.
Una misma filosofía: buceo
extremo al alcance de los
entusiastas.

*Scaphandre I* (2021)
56mm Ploprof tribute

*Scaphandre II* (2022)
45mm Seamaster 1000

*Scaphandre III* (2023)
44mm Turtle master
#pagebreak()

// Instrucciones
*INSTRUCCIONES DE USO*

CARGA: automática NH35. Si
se detiene: 20-30 giros
sentido horario.

AJUSTE: desenroscar corona,
tirar, ajustar hora. NO
entre 21:00-03:00.

BUCEO: apretar corona antes
de sumergir. NO manipular
bajo agua. Lavar con agua
dulce tras inmersión.

MANTENIMIENTO: revisar juntas
cada 2 años. Servicio cada 5.
Evitar golpes e imanes.
#pagebreak()

// Contraportada
#block({
  image("scaphandre_iii_back.jpeg", width: 100%, height: 50%, fit: "cover")
})

#place(top + left, dx: 5mm, dy: 45mm, box(width: 100% - 10mm, text(black, size: 7pt)[
Fondo grabado numerado. Forma
Turtle, 1200m. Capítulo final
de la saga. Legado Cousteau.
]))

#place(bottom + left, dx: 5mm, dy: -5mm, text(black, size: 7pt)[
_RSWC · Hablemos de Relojes_
])