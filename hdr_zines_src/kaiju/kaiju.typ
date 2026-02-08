#import "../../src/lib.typ": watch_zine

#set document(
  author: "HdR · RSWC",
  title: "RSWC Kaiju · Bestias extrañas"
)

#set text(font: "Carlito", size: 7pt, lang: "es")
#set page("a4")

#show heading.where(level: 1): hd => {
  pad(top: 2em, text(10em, align(center, hd.body)))
}

#show: watch_zine.with(
  digital: json(bytes(sys.inputs.at("digital", default: "false"))),
  draw-border: true
)

///////////////////////////////////////////////////////////////////////////////
// 1) PORTADA
///////////////////////////////////////////////////////////////////////////////
#block({
  image("kaiju_front.jpeg", width: 100%, height: 100%, fit: "cover")

  place(top + center, dy: 6mm, box(
    text(white, stroke: 0.6pt + black)[
      #text(size: 21pt)[*RSWC KAIJU*]\\
      #text(size: 12pt)[*Monstruos, Tokio y acero*]
    ]
  ))
})
#pagebreak()

///////////////////////////////////////////////////////////////////////////////
// 2) ESPECIFICACIONES TÉCNICAS
///////////////////////////////////////////////////////////////////////////////
*ESPECIFICACIONES TÉCNICAS*

- Modelo: RSWC Kaiju
- Diámetro: 45,5 mm
- Grosor: 13,7 mm
- Lug to lug: 50 mm
- Material: acero quirúrgico 316L
- Cristal: zafiro con revestimiento AR
- Movimiento: Seiko NH35 automático
- Bisel: unidireccional (120 clicks), cerámico, con inserciones luminosas
- Luminoso: Swiss C3
- Hermeticidad: 200 m
- Correa: piel 22 mm
- Hebilla: firmada
- Edición limitada: 50 unidades (“50 garras”)

#pagebreak()

///////////////////////////////////////////////////////////////////////////////
// 3) LOS MONSTRUOS COMO TRAGEDIA
///////////////////////////////////////////////////////////////////////////////
*EL MITO DEL MONSTRUO*

“Los monstruos son seres trágicos. Nacen demasiado altos, demasiado fuertes…
No atacan por decisión propia.”

Con esta cita de Ishiro Honda, creador de Godzilla, se abre el espíritu del Kaiju:
la bestia como reflejo del miedo humano, pero también como símbolo de empatía.

El género kaiju no habla solo de destrucción. Habla de trauma, de supervivencia
y de cómo una sociedad proyecta sus temores en criaturas imposibles.

El Kaiju de RSWC nace como homenaje directo a ese imaginario.

#pagebreak()

///////////////////////////////////////////////////////////////////////////////
// 4) DEL MUNDO PERDIDO A KING KONG
///////////////////////////////////////////////////////////////////////////////
*CUANDO LOS MONSTRUOS ENTRARON EN EL CINE*

En 1912 Conan Doyle imaginó “El mundo perdido”, una expedición a tierras ignotas
donde aún sobrevivían dinosaurios.

Pocos años después, en 1933, King Kong llevó el monstruo gigante al cine mundial,
convirtiéndose en un fenómeno también en Japón.

La fascinación por lo colosal, lo incomprensible y lo salvaje ya estaba sembrada.
Y el cine japonés no tardaría en hacerlo suyo.

#pagebreak()

///////////////////////////////////////////////////////////////////////////////
// 5) GODZILLA Y EL JAPÓN POST-NUCLEAR
///////////////////////////////////////////////////////////////////////////////
*EL NACIMIENTO DEL KAIJU MODERNO*

En 1954 Ishiro Honda crea una bestia despertada por pruebas atómicas en Bikini.
No era solo espectáculo: Japón estaba traumatizado por Hiroshima y Nagasaki,
por la derrota, el hambre y el miedo nuclear.

Godzilla se convirtió en símbolo cultural: destrucción, catarsis y supervivencia.
El monstruo era el trauma hecho carne.

De ahí nace el término *kaiju* (怪獣): “bestia extraña”, criatura gigantesca que
marcaría generaciones enteras.

#pagebreak()

///////////////////////////////////////////////////////////////////////////////
// 6) DEL KAIJU AL MECHA · UN GÉNERO ETERNO
///////////////////////////////////////////////////////////////////////////////
*BESTIAS, ROBOTS Y MITO POP*

Tras Godzilla llegaron Mothra, Ghidorah, Rodan, Gamera…
y con el tiempo los monstruos se volvieron tecnológicos: nacieron los mechas,
desde Mazinger Z hasta Evangelion.

Occidente adoptó el término definitivamente con “Pacific Rim” (2013),
donde kaijus y robots gigantes chocan como mitologías modernas.

El género sigue vivo porque representa algo profundo:
el miedo a lo inmenso… y la fascinación por enfrentarlo.

#pagebreak()

///////////////////////////////////////////////////////////////////////////////
// 7) EL RELOJ · TOKIO EN LA TRASERA
///////////////////////////////////////////////////////////////////////////////
*RSWC KAIJU: UN MONSTRUO EN LA MUÑECA*

En HdR, el Kaiju es un homenaje a esas películas y criaturas.

La trasera, diseñada por Girolamo, evoca el skyline de Tokio con torres de
comunicación y el guiño a un edificio con torre de reloj.

Rodeando el grabado aparece la advertencia nietzscheana:

“Quien lucha con monstruos debe procurar no convertirse en monstruo.”

Caja angular, corona firmada y hebilla grabada completan un reloj con identidad
propia: un diver contundente, cultural y narrativo.

#pagebreak()

///////////////////////////////////////////////////////////////////////////////
// 8) CONTRAPORTADA
///////////////////////////////////////////////////////////////////////////////

#image("kaiju_back.jpeg", width: 100%, height: 60%, fit: "cover")

#place(top + left, dx: 5mm, dy: 55mm, box(width: 100% - 10mm, text(black, size: 7pt)[
*RSWC Kaiju*  

Tokio en la trasera. 
Bestias en la historia.  
Un monstruo trágico hecho acero.
]))

#place(bottom + left, dx: 5mm, dy: -5mm, text(black, size: 7pt)[
_Sol y Sombra · Hablemos de Relojes_
])
