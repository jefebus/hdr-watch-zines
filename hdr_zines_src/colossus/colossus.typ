#import "../../src/lib.typ": watch_zine

#set document(author: "HdR", title: "RSWC Super Massive Colossus")
#set text(font: "Carlito", size: 7pt, lang: "es")
#set page("a4")

#show heading.where(level: 1): hd => {
  pad(top: 2em, text(10em, align(center, hd.body)))
}

#show: watch_zine.with(
  digital: json(bytes(sys.inputs.at("digital", default: "false"))),
  draw-border: true
)

// Page 1 - Cover
#block({
  image("colossus_front.jpeg", width: 100%, height: 100%, fit: "cover")
  place(top + center, dy: 3mm, box(
    fill: rgb(0, 0, 0, 150),
    inset: 8pt,
    radius: 4pt,
    text(white, stroke: 0.5pt + black)[
      #text(size: 12pt)[*RSWC*]\ 
      #text(size: 10pt)[*Super Massive*]\ 
      #text(size: 10pt)[*Colossus*]
    ]
  ))
})#pagebreak()

// Page 2 - Specifications
*ESPECIFICACIONES TÉCNICAS*

Modelo: Super Massive Colossus
Referencia: Colossus of the 
Abyss Automatic 10000m

Dimensiones:
- Diámetro: 46,5 mm
- Grosor: 22,0 mm
- Lug to lug: 56 mm
- Ancho correa: 24 mm
- Cristal: Zafiro 8 mm grosor
- Bisel: Cerámico unidireccional
- Resistencia: *10.000 metros*
- Movimiento: Seiko NH35
- Calendario: Disco a las 6
- Luminiscencia: BGW9 Swiss
#pagebreak()

// Page 3 - Historia
*LA LEYENDA DEL COLOSO*

Cuenta la leyenda que el Faro
de Alejandría iluminaba todo
el mar conocido, desde Egipto
hasta las Columnas de Hércules.

Construido por Sóstrato de
Cnido bajo el mandato de
Ptolomeo I, el faro era una
mole de más de cien metros,
la torre más alta jamás
construida y símbolo del poder
de su rey.

Sóstrato creía que en el
instante que su faro dejase de
iluminar el agua, se habría
llegado al fin del mundo.
#pagebreak()

// Page 4 - Detalles de diseño
*ARÍSTIDES Y EL COLOSO*

Ptolomeo II mandó organizar
una expedición de tres naves
con Arístides de Salónica al
mando para demostrar que no
existía el fin del mundo.

La flota navegó más allá de
las Columnas de Hércules. Al
adentrarse en lo desconocido,
de las profundidades emergió
un enorme coloso de piedra
incandescente y ojos de fuego.

El monstruo bramó: "¡Cómo
osas profanar lo desconocido!"
y destruyó dos naves. Solo
Arístides logró escapar.
#pagebreak()

// Page 5 - Información adicional
*NUEVA LÍNEA SUPER MASSIVE*

Este diseño inaugura la nueva
línea SUPER MASSIVE de RSWC,
dedicada exclusivamente a
relojes de buceo extremos.

El conjunto esfera y agujas
fue diseñado completamente
desde cero, alejándose de
la estética original para
darle ese toque masivo que
necesitaba el proyecto.

El diver más super masivo,
super extremo, super bestial
y super salvaje que un mortal
pobre puede comprarse hoy.
Lo colosal del instrumento.
#pagebreak()

// Page 6 - Créditos y más info
*CARACTERÍSTICAS ÚNICAS*

Caja estructuralmente única,
diferente en tamaño y
materiales. Certificación real
de resistencia a 10.000m
asegurada por Astar.

Personalización completa:
- Trasera RSWC exclusiva
- Corona personalizada
- Esfera diseñada from scratch
- Agujas macizas originales
- Calendario discreto a las 6
- Disco NH35 modificado

Bisel cerámico, componentes
nuevos y lumen BGW9 swiss
grade completan un conjunto
tremendamente poderoso.
#pagebreak()

// Page 7 - Instrucciones de uso
*INSTRUCCIONES DE USO*

*Ajuste de hora:* Desenroscar
corona, tirar 2 posiciones,
girar para ajustar.

*Ajuste de fecha:* Desenroscar
corona, tirar 1 posición,
girar para ajustar. Evitar
entre 21:00 y 03:00.

*Bisel:* Girar para marcar
tiempo de inmersión. Solo
gira en sentido antihorario.

*Cuerda:* Automático. 40h de
reserva. Girar corona 20-30
vueltas si está parado.

*Resistencia:* No usar corona
bajo el agua. Revisar
anualmente las juntas.
#pagebreak()

// Page 8 - Contraportada
#block({
  image("colossus_back.jpeg", width: 100%, height: 50%, fit: "cover")
})

#place(top + left, dx: 5mm, dy: 45mm, box(width: 100% - 10mm, text(black, size: 7pt)[
El RSWC Super Massive Colossus es un coloso del abismo que representa el máximo exponente de la relojería subacuática accesible. 
]))

#place(bottom + left, dx: 5mm, dy: -5mm, text(black, size: 7pt)[
_RSWC · Hablemos de Relojes_
])
