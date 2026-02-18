#import "../../src/lib.typ": watch_zine

#set document(author: "HdR", title: "Sol y Sombra – Competidor")
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
  image("competidor_front.jpeg", width: 100%, height: 100%, fit: "cover")
  place(top + center, dy: 3mm, box(
    fill: rgb(0, 0, 0, 150),
    inset: 8pt,
    radius: 4pt,
    text(white, stroke: 0.5pt + black)[
      #text(size: 12pt)[*Sol y Sombra*]\ 
      #text(size: 10pt)[*Competidor*]
    ]
  ))
})#pagebreak()

*ESPECIFICACIONES TÉCNICAS*
- Caja de acero 316L acabado cepillado
- Diámetro: 40mm, espesor: 15,1mm
- Lug to lug: 49mm, anchura asas: 20mm
- Bisel bidireccional 120 clicks taquígrafo
- Cristal zafiro domed con AR interno
- Calibre Seagull ST-1901 carga manual
- Cronógrafo mecánico, 21.600 VPH
- Super-LumiNova swiss C3
- Corona firmada
- Tapa trasera roscada grabada
- Resistencia al agua: 10 atmósferas
- Correa FKM con hebilla firmada
#pagebreak()

*EL ESPÍRITU COMPETIDOR*

Para todos los que soñaban con 
conducir un Seat 124 Sport y 
sentirse pilotos de competición 
en las carreteras nacionales.

El Competidor celebra la pasión 
automovilística del español de 
los años sesenta y setenta. 
Cuando el coche no era solo 
transporte, era un sueño.

Bisel taquímetro histórico para 
medir velocidades. Segundera 
inspirada en la navaja de 
Algarrobo de "Curro Jiménez". 
Diseño deportivo con alma 
española.

#pagebreak()

*CRONÓGRAFOS DEPORTIVOS CLÁSICOS*

Entre los años 60 y 70, los 
cronógrafos deportivos eran el 
sueño de cualquier aficionado 
al automovilismo. Relojes 
robustos con taquímetro para 
calcular velocidades.

No eran baratos. Costaban lo 
que un buen televisor o varios 
meses de alquiler. Pero quien 
podía permitírselo lucía con 
orgullo su cronógrafo deportivo.

Hoy rendimos homenaje a aquellos 
relojes que acompañaban los 
viajes en Seat 600, Renault 4 
y 124. Los coches del milagro 
español.

#pagebreak()

*DISEÑO BICOMPAX DEPORTIVO*

Esfera en acabado sunray con 
dos subesferas bicompax. 
Disponible en dos versiones: 
gris oscuro clásico y gris 
claro panda.

La segundera "doble hoja" 
pulida rinde homenaje a la 
navaja albaceteña. Índices 
aplicados y Super-LumiNova C3 
para máxima legibilidad.

Bisel taquímetro histórico 
bidireccional de 120 pasos. 
Pulsadores clásicos y corona 
grabada de época. Cada detalle 
evoca los cronógrafos deportivos 
de antaño.

#pagebreak()

*CUATRO ACABADOS DISPONIBLES*

Cuatro versiones para cada piloto:

*Clásico:* Gris oscuro sunray. 
Elegancia atemporal racing.

*Panda:* Gris claro sunray con 
subesferas contrastadas. Espíritu 
de los cronógrafos vintage.

*Rally Monegros:* Edición limitada 
43 unidades. Colores del desierto 
con lume tostado. Solo para 
participantes del "Salto de Fe". 
Una joya exclusiva.

*AquaRally:* Versión acuática con 
esfera azul vibrante. El espíritu 
competidor llevado al agua. 
Funcionalidad deportiva con alma 
mediterránea.

#pagebreak()

*INSTRUCCIONES DE USO*

*Bisel Taquímetro:* Bidireccional 
120 pasos. Iniciar cronógrafo al 
punto inicial, detener tras 1 km. 
Leer velocidad en escala.

*Carga:* Cuerda manual. Dar 30-35 
vueltas completas en sentido 
horario hasta sentir resistencia.

*Cronógrafo:* Pulsador superior 
para iniciar/detener. Pulsador 
inferior para poner a cero 
(solo con cronógrafo parado).

*Ajustes:* Corona en primer 
punto: ajustar hora.

*Mantenimiento:* Resistente 10 ATM. 
No duchas ni baños. Revisión 
cada 4-5 años. Guardar en lugar 
seco. La correa FKM es resistente 
al agua y sudor.

#pagebreak()

#image("competidor_back.jpeg", width: 100%, height: 50%, fit: "cover")

#place(top + left, dx: 5mm, dy: 45mm, box(width: 100% - 10mm, text(black, size: 7pt)[
La tapa trasera roscada de acero presenta el escudo Sol y Sombra 
grabado en relieve. Un diseño clásico que rinde homenaje a los 
cronógrafos deportivos españoles de antaño.
]))

#place(bottom + left, dx: 5mm, dy: -5mm, text(black, size: 7pt)[
_Sol y Sombra · Hablemos de Relojes_
])
