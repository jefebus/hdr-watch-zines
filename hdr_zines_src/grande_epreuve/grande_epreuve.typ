#import "../../src/lib.typ": watch_zine

#set document(author: "HdR", title: "RSWC Grande Épreuve")
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
  image("grande_epreuve_front.jpeg", width: 100%, height: 100%, fit: "cover")
  place(top + center, dy: 3mm, box(
    fill: rgb(0, 0, 0, 150),
    inset: 8pt,
    radius: 4pt,
    text(white, stroke: 0.5pt + black)[
      #text(size: 12pt)[*RSWC*]\ 
      #text(size: 10pt)[*Grande Épreuve*]
    ]
  ))
})#pagebreak()

*ESPECIFICACIONES TÉCNICAS*

- Caja acero 316L
- Diámetro: 40mm (41mm bisel)
- Espesor: 14mm
- Corona firmada no roscada
- Pulsadores roscados
- Tapa roscada grabada
- Resistencia: 100m / 10 ATM
- Cronógrafo Seagull ST19
- Cuerda manual, 21 rubíes
- Cristal zafiro AR interno
- Bisel cerámico taquimétrico
- Lumen BGW-9 azul
- Brazalete Oyster
- Paso correa: 20mm
- Peso: 160g aprox.
- Dial blanco/negro (panda)
#pagebreak()

*LA GRAN PRUEBA*

Grande Épreuve ("Gran Prueba")
nació en 2022 como homenaje
al automovilismo clásico.

Su diseño evoca los
cronógrafos de pilotos de
los años 60-70, cuando
hombres y máquinas se
enfrentaban en carreras
legendarias.

Le Mans, Mille Miglia,
Targa Florio. Eventos donde
la precisión era tan crucial
como el coraje.

Este cronógrafo captura la
esencia de aquella época,
cuando los relojes eran
herramientas esenciales.
#pagebreak()

*DISEÑO CLÁSICO*

Diseño limpio y funcional
inpirado en cronógrafos
automovilísticos vintage.

Esfera de dos contadores
muestra herencia racing con
claridad y elegancia.

Bisel cerámico taquimétrico
permite calcular velocidades.
Sin fechador: pureza total.

Caja de 40mm con
proporciones perfectas.
Perfil de 14mm evoca
cronógrafos clásicos de
cuerda manual.

Logo aplicado con acabado
pulido. Estética años 60.
#pagebreak()

*MOVIMIENTO ST19*

En el corazón late el Seagull ST19, versión china del 
legendario Venus 175. Este calibre de cuerda manual con 
disposición en columna ofrece cronometraje preciso y durabilidad 
probada en millones de relojes.

La tapa roscada de acero presenta un detallado grabado de dos 
coches de carreras clásicos. Este diseño artístico ocupa toda 
la trasera, combinando personalidad histórica con protección 
del movimiento.

Con 21 rubíes, este calibre combina tradición relojera con 
fiabilidad moderna, ideal para uso diario.
#pagebreak()

*VERSATILIDAD Y ESTILO*

El Grande Épreuve se produjo en dos versiones. El dial blanco 
panda proyecta elegancia deportiva, perfecto para traje y 
ocasiones formales. El dial negro reverse panda ofrece estética 
racing más agresiva, ideal para uso casual.

Ambas versiones comparten la misma calidad de construcción. 
Los sub-diales contrastantes mejoran la legibilidad y aportan 
carácter deportivo clásico.

El brazalete Oyster de acero con cierre doble pulsador aporta 
solidez y confort. El ancho de 20mm permite infinitas opciones: 
NATO, rally, piel, caucho. Cada correa transforma el carácter 
del reloj.
#pagebreak()

*INSTRUCCIONES DE USO*

*CARGA:* Gire corona en
sentido horario 30-40 veces.
No fuerce. Corona no roscada.

*HORA:* Tire corona, ajuste
hora y minutos. Empuje.

*CRONÓGRAFO:* Pulsador
superior inicia/detiene.
Inferior pone a cero (solo
con cronógrafo detenido).

*RESISTENCIA:* 100m (10 ATM).
Apto natación. No buceo.

*MANTENIMIENTO:* Revise cada
3-5 años. Limpie con paño.
Evite imanes y golpes.
#pagebreak()

// back cover
#block({
  image("grande_epreuve_back.jpeg", width: 100%, height: 50%, fit: "cover")
})

#place(top + left, dx: 5mm, dy: 45mm, box(width: 100% - 10mm, text(black, size: 7pt)[
La tapa roscada presenta un grabado detallado de dos coches 
de carreras clásicos. Este relieve artístico combina historia 
automóvil con protección del movimiento ST19. 
Cronógrafo de cuerda manual con alma racing.
]))

#place(bottom + left, dx: 5mm, dy: -5mm, text(black, size: 7pt)[
_RSWC · Hablemos de Relojes_
])

