#import "../../src/lib.typ": watch_zine

#set document(author: "HdR", title: "Gagarin 50 Aniversario")
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
  image("gagarin_50_front.jpeg", width: 100%, height: 100%, fit: "cover")
  place(top + center, dy: 3mm, box(
    fill: rgb(0, 0, 0, 150),
    inset: 8pt,
    radius: 4pt,
    [
      #text(white, size: 12pt, stroke: 0.5pt + black)[*Sturmanskie*]\ 
      #text(white, size: 10pt, stroke: 0.5pt + black)[*Gagarin 50 Aniversario*]
    ]
  ))
})
#pagebreak()

*ESPECIFICACIONES TÉCNICAS*

- Movimiento: Poljot 2609, 17 rubíes
- Carga: Manual
- Caja: Acero inoxidable
- Diámetro: 38 mm (aparenta 40 mm)
- Grosor: 11,5 mm
- Cristal: Mineral
- Correa: 18 mm
- Resistencia: 3 ATM
- Diales: Blanco, negro, gris aged
- Agujas: Catedral o tipo pera (pear)
- Trasera: Grabada con Gagarin

#pagebreak()

*12 DE ABRIL DE 1961*

¡Poyejali! ¡Vámonos! Con este saludo histórico, 
Yuri Gagarin despegó hacia el espacio en la nave 
Vostok 1. 108 minutos de vuelo orbital que cambiaron 
la historia de la humanidad.

Primer hombre en el espacio exterior. Primer ser humano 
en experimentar ingravidez. Un vuelo arriesgado en 
una cápsula diminuta con 50% de probabilidad de volver 
vivo según los propios técnicos soviéticos.

La reentrada fue crítica. La cápsula se estampó contra 
el suelo. Gagarin se eyectó y aterrizó en paracaídas. 
Un héroe que abrió la era espacial.

#pagebreak()

*STURMANSKIE ESPACIAL*

El reloj Sturmanskie acompañó a Gagarin en su vuelo 
orbital. Manufactura soviética diseñada para resistir 
condiciones extremas: vibraciones tremendas del lanzamiento, 
ingravidez total, temperaturas fluctuantes.

La carrera espacial entre URSS y USA alcanzaba su 
punto crítico. Cada segundo cronometrado era vital 
para las maniobras orbitales. El Sturmanskie se convirtió 
en símbolo del triunfo soviético en esa competición.

50 años después, la reedición honra aquel momento 
histórico. Un reloj que conecta directamente con la 
hazaña más audaz del siglo XX: el primer humano 
abandonando nuestro planeta.

#pagebreak()

*REEDICIÓN HISTÓRICA*

Volmax recreó el Sturmanskie original de Gagarin para 
el 50 aniversario. Movimiento Poljot 2609 de 17 rubíes, 
calibre manual vintage que mantiene la esencia histórica.

Caja de 38 mm sin bisel aparenta 40 mm, proporciones 
clásicas de la época. Cristal mineral como en el original. 
Corona tipo diamante (luego modificada a plana por 
petición del equipo HdR).

Tres diales opcionales: negro con agujas catedral, 
blanco con agujas pear originales, y gris aged con 
agujas pear. Lume envejecido (aged) para autenticidad 
vintage. Caja de presentación especial en desarrollo.

#pagebreak()

*PERSONALIZACIÓN HdR*

La trasera personalizada HdR presenta diseño exclusivo 
del foro: silueta de Gagarin y la Vostok 1, estrella 
soviética, inscripción conmemorativa del vuelo histórico.

Grabado láser de precisión en la tapa ciega. Cada 
detalle pensado para homenajear el vuelo espacial 
más importante de la historia. Una pieza única que 
solo poseen los foreros de HdR.

El dial personalizado combina tipografías cirílicas 
auténticas con diseño funcional. Agujas tipo catedral 
mejoradas en tamaño para máxima legibilidad.

#pagebreak()

*INSTRUCCIONES DE USO*

*Carga manual:* Corona posición normal. Girar sentido 
horario 30-40 vueltas hasta sentir resistencia suave. 
NO forzar. Reserva 42 horas. Cuerda diaria mismo horario 
recomendada.

*Ajuste hora:* Tirar corona una posición. Girar agujas 
sentido deseado. Segundera continúa moviendo (no hay 
hacking). Empujar corona al terminar.

*Cristal mineral:* Resistente arañazos cotidianos pero 
no indestructible. Evitar golpes fuertes contra superficies 
duras. Limpiar con paño microfibra.

*Resistencia agua:* 3 ATM (30m). Salpicaduras, lluvia. 
NO sumergir. NO ducha/natación. Reloj histórico no diseñado 
uso acuático.

#pagebreak()

// back cover
#block({
  image("gagarin_50_back.jpeg", width: 100%, height: 50%, fit: "cover")
})

#place(top + left, dx: 5mm, dy: 45mm, box(width: 100% - 10mm, text(black, size: 7pt)[
El movimiento Poljot 2609 de 17 rubíes es un calibre 
manual histórico fabricado en Rusia. La trasera grabada muestra a 
Gagarin y su nave Vostok 1, símbolo eterno del primer 
vuelo espacial humano. 
]))

#place(bottom + left, dx: 5mm, dy: -5mm, text(black, size: 7pt)[
_Sturmanskie · Hablemos de Relojes_
])
