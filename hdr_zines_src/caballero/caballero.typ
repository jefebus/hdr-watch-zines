#import "../../src/lib.typ": watch_zine

#set document(author: "HdR", title: "Sol y Sombra – Caballero")
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
  image("caballero_front.jpeg", width: 100%, height: 100%, fit: "cover")
  place(top + center, dy: 3mm, box(
    fill: rgb(0, 0, 0, 150),
    inset: 8pt,
    radius: 4pt,
    text(white, stroke: 0.5pt + black)[
      #text(size: 12pt)[*Sol y Sombra*]\ 
      #text(size: 10pt)[*Caballero*]
    ]
  ))
})#pagebreak()

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

*LA ESFERA*

La esfera del Caballero presenta un delicado acabado plateado con 
textura rayos de sol que captura la luz de manera singular.

Las agujas dauphine pulidas se deslizan elegantemente sobre los índices 
aplicados, también pulidos y ligeramente curvados, creando una lectura 
precisa y refinada.

La ventana de fecha a las 3 cuenta con un marco metálico pulido que 
aporta distinción. El logo Sol y Sombra está aplicado en la esfera.

Los tres acabados disponibles (Clásico, Deportivo y Moderno) se 
reflejan en la esfera, dando a cada versión un carácter único.

#pagebreak()

*EL CALIBRE SELLITA SW-200*

Fabricado en Suiza, el Sellita SW-200 es reconocido por su fiabilidad 
y precisión. Con 26 rubíes, oscila a 28.800 alternancias por hora.

Su sistema de carga bidireccional optimiza la eficiencia. La reserva 
de marcha alcanza 38 horas. Permite también carga manual mediante corona.

Con 25,6 mm de diámetro y 4,6 mm de grosor, su arquitectura robusta 
lo convierte en un "caballo de batalla" de la relojería contemporánea.

Marcas como Oris, Sinn o Christopher Ward confían en este calibre.
El Caballero lo monta sin personalizar, tal como sale de fábrica.

#pagebreak()

// --- ESPIRITU VINTAGE ---
*ESPÍRITU VINTAGE CON MATERIALES MODERNOS*

El Sol y Sombra Caballero rinde homenaje al Duward Diplomatic cuadrado, 
manteniendo la esencia de aquella estética que marcó una época.

Su construcción y proporciones honran aquel espíritu original con 
materiales y movimiento suizo contemporáneos.

Un reloj para quienes valoran la continuidad histórica con visión moderna.
Un proyecto que rescata el pasado y lo trae al presente con respeto.

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