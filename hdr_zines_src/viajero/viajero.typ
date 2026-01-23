#import "../../src/lib.typ": watch_zine

#set document(author: "HdR", title: "Sol y Sombra – Viajero")
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
  image("viajero_front.jpeg", width: 100%, height: 100%, fit: "cover")
  place(top + center, dy: 5mm, text(black, size: 16pt)[
    *Sol y Sombra*\ 
    *Viajero*
  ])
})
#pagebreak()

*ESPECIFICACIONES TÉCNICAS*
- Caja de acero 316L acabado pulido
- Diámetro: 41mm, espesor: 14,7mm
- Lug to lug: 48mm, anchura asas: 22mm
- Corona grabada de 8mm de diámetro
- Cristal zafiro domed con AR interno
- Bisel zafiro funcional ciudades
- Esfera panda crema vintage
- Estrella tridimensional aplicada
- Calibre Seagull ST-1901 carga manual
- Cronógrafo mecánico, 21.600 VPH
- Tapa trasera roscada zafiro
- Resistencia al agua: 50 metros
- Correa piel con hebilla firmada
#pagebreak()

*EL ALMA VIAJERA*

Para todos los grandes viajeros 
y para los no tan grandes también. 
El Viajero Worldtimer celebra el 
espíritu explorador del español 
por su propia geografía.

El bisel de zafiro presenta 
destinos españoles en español: 
Barcelona, Madrid, Bilbao, 
Sevilla, Valencia, Santiago, 
Zaragoza, Palma, Granada, 
Toledo, Córdoba, Salamanca.

Un homenaje a los viajes en 
Renault 4 TL por las carreteras 
nacionales. A los hostales de 
provincia, los chuletones en 
pueblos perdidos de Soria, y a 
las matrículas que se saludaban 
fuera de su provincia.

#pagebreak()

*ÚLTIMA SERIE DEL ST-1901*

El gobierno chino decidió no 
suministrar más calibres 
ST-1901 a empresas occidentales, 
al menos no a pequeñas micro 
marcas como Sol y Sombra.

HdR consiguió reservar un total 
de 200 calibres. Esta serie 
del Viajero forma parte de ese 
lote. Es la primera y última 
vez que veremos un cronógrafo 
Viajero con el veterano y 
honorable ST-1901.

Un movimiento de leyenda para un 
proyecto legendario. El canto 
del cisne de los cronógrafos 
Sol y Sombra con calibre de 
carga manual. 

#pagebreak()

*DISEÑO PANDA VINTAGE*

Esfera en blanco roto ligeramente 
cremoso que acentúa la naturaleza 
"panda vintage" del reloj. 
Inspiración en los cronógrafos 
deportivos de los años 60 y 70.

La subesfera del cronógrafo en 
negro contrasta con la esfera 
principal. Numeración aplicada 
en oro pulido. Agujas seta en 
acabado pulido/cepillado.

La estrella tridimensional 
aplicada recuerda la importancia 
de esta serie. Homenaje a 
Seagull y a la comunidad HdR. 
Un guiño a la estrella que 
orienta al viajero en su camino.

#pagebreak()

*BISEL WORLDTIMER*

Bisel de cristal de zafiro 
perfectamente funcional con 
destinos españoles grabados 
en español. Un lujo poco común 
que eleva el empaque del reloj.

Cada ciudad representa una 
aventura, un destino, una 
historia por descubrir. Desde 
la costa mediterránea hasta los 
Picos de Europa. Del Camino de 
Santiago a las dehesas extremeñas.

Viajar por España: un destino 
exótico para el español. Los 
que saludaban con el claxon 
fuera de provincia. Los que 
paraban en cada hostal. Los 
que viajaban "a lo grande".

#pagebreak()

*INSTRUCCIONES DE USO*

*Carga:* Movimiento de cuerda 
manual. Dar 30-35 vueltas 
completas a la corona en sentido 
horario hasta sentir ligera 
resistencia. No forzar.

*Cronógrafo:* Pulsador superior 
para iniciar/detener. Pulsador 
inferior para poner a cero 
(solo con cronógrafo parado).

*Ajustes:* Corona en primer 
punto: cambio rápido de fecha. 
Segundo punto: ajustar hora. 
No ajustar fecha entre 21:00 
y 03:00.

*Mantenimiento:* Resistente 50m. 
No sumergir. Revisión cada 4-5 
años. Guardar en lugar seco. La 
correa de piel requiere cuidado 
especial.

#pagebreak()

#image("viajero_back.jpeg", width: 100%, height: 50%, fit: "cover")

#place(top + left, dx: 5mm, dy: 45mm, box(width: 100% - 10mm, text(black, size: 7pt)[
La tapa trasera roscada con cristal de zafiro plano permite admirar 
el calibre Seagull ST-1901, con su rueda de columnas visible. 
Por última vez, el ST-1901 sin cuello de cisne montado en un 
Sol y Sombra en todo su esplendor. 
]))

#place(bottom + left, dx: 5mm, dy: -5mm, text(black, size: 7pt)[
_Sol y Sombra · Hablemos de Relojes_
])
