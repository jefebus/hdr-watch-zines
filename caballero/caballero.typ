#import "../src/lib.typ": watch_zine

#set document(author: "Jefebus", title: "Sol y Sombra – Caballero")
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
  // Replace with your actual cover image file
  image("caballero_front.jpeg", width: 100%, height: 100%, fit: "cover")
  place(top + center, dy: 5mm, text(white, size: 20pt)[
    *Sol y Sombra*\ 
    *Caballero*
  ])
})
#pagebreak()

*ESPECIFICACIONES TÉCNICAS*
- Caja de acero 316L, caja: 35×34mm, espesor: 13,2mm, lug to lug: 46mm, anchura de asas: 22mm
- Cristal de zafiro curvo con tratamiento antirreflejos (AR) interno
- Calibre: Sellita SW-200, automático suizo con 28.800 alternancias/h
- Fecha
- Resistencia al agua: 50 metros
- Tapa trasera con cristal de zafiro, atornillada, grabada.
#pagebreak()

*DESCRIPCIÓN DEL RELOJ*

El Sol y Sombra Caballero presenta una caja cuadrada de 35 × 34 mm en acero inoxidable 316L pulido.
Su espesor de 13,2 mm mantiene proporciones equilibradas.
Los 46 milímetros de altura entre asas lo hacen versátil y cómodo.

La esfera cuenta con un diseño minimalista de dos tonos que juega con la dualidad Sol y Sombra.
Los índices aplicados en forma de barritas actúan como guías para las agujas.
El fechador se sitúa a las 3.

El cristal de zafiro curvo con tratamiento antirreflejante protege la esfera.
La tapa trasera con cristal permite admirar el movimiento Sellita SW-200.

#pagebreak()

*LA ESPAÑA DE UNA ÉPOCA*

Sol y Sombra evoca una época de contrastes entre tradición y modernidad.
El reloj habla de identidad, dualidad y el equilibrio entre fuerzas 
opuestas que definen tanto la naturaleza como la experiencia humana.

En la trasera se encuentra grabado un epitafio que constituye un 
homenaje al patrimonio cultural que inspira el proyecto y al 
concepto de dualidad que define su identidad.

Es una pequeña obra de arte que trasciende su función de 
marcar el tiempo, invitándote a reflexionar sobre los 
contrastes que nos rodean.

#pagebreak()

*DETALLES CONSTRUCTIVOS*

El Sol y Sombra Caballero toma como base el Sellita SW-200, 
aprovechando su confiabilidad y precisión suiza.

Los índices aplicados crean guías visuales claras por donde 
viajan las agujas, generando una lectura precisa y elegante.

El cristal sobredimensionado y curvo protege con elegancia, 
capturando luz de forma singular. La corona es suave y precisa.
La correa de piel se adapta a cualquier estación y 
complementa perfectamente la estética del reloj.

#pagebreak()

// --- ESPIRITU VINTAGE ---
*ESPÍRITU VINTAGE CON MATERIALES MODERNOS*

El Sol y Sombra Caballero es un homenaje al Duward Diplomatic 
cuadrado, manteniendo la esencia de aquella estética que marcó una época.

Se recoge ese carácter de un diseño histórico que muchos siguen apreciando hoy.

Su construcción y proporciones buscan honrar aquel espíritu original con materiales 
y movimientos contemporáneos, dando como resultado un reloj para quienes valoran 
la continuidad histórica con visión moderna.

Un proyecto que rescata la sabiduría del pasado y la trae al presente con
respeto y coherencia.

#pagebreak()

// --- INSTRUCCIONES ---
*INSTRUCCIONES DE CUIDADO Y MANTENIMIENTO*

Ajuste de hora: Tira corona hasta la posición dos. Gira suavemente 
hasta la hora deseada.

Ajuste de fecha: Tira corona hasta la posición uno. Gira hacia adelante 
para avanzar fecha. *Evita cambios entre 22h y 2h.*

La caja de acero 316L requiere limpieza ocasional con un paño suave. 
Evita productos químicos agresivos.

Mantén seca la correa de cuero. Ocasionalmente, hidrata la correa con 
grasa de caballo para preservar su flexibilidad y longevidad.

#pagebreak()

#image("caballero_back.jpeg", width: 100%, height: 50%, fit: "cover")

#place(top + left, dx: 5mm, dy: 45mm, box(width: 100% - 10mm, text(black, size: 7pt)[
La tapa trasera atornillada con cristal de zafiro permite admirar el 
movimiento Sellita SW-200 en su funcionamiento constante. En la parte superior 
izquierda figura el emblema de Sol y Sombra y en la inferior derecha se
graba el número de serie del 1 al 75.
]))

#place(bottom + left, dx: 5mm, dy: -5mm, text(black, size: 7pt)[
_Sol y Sombra · Hablemos de Relojes_
])