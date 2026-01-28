#import "../../src/lib.typ": watch_zine

#set document(author: "HdR", title: "Dirty Fifteen · Reloj de oficiales 2GM")
#set text(font: "Carlito", size: 7pt, lang: "es")
#set page("a4")

#show heading.where(level: 1): hd => {
  pad(top: 2em, text(10em, align(center, hd.body)))
}

#show: watch_zine.with(
  digital: json(bytes(sys.inputs.at("digital", default: "false"))),
  draw-border: true // draw border boxes in printing mode
)

///////////////////////////////////////////////////////////////////////////////
// 1) COVER
///////////////////////////////////////////////////////////////////////////////
#block({
  image("dirty_fifteen_front.jpeg", width: 100%, height: 100%, fit: "cover")
  place(top + center, dy: 5mm, box(
    text(white, stroke: 0.5pt + black)[
      #text(size: 20pt)[*DIRTY FIFTEEN*]\\
      #text(size: 14pt)[*Reloj de oficiales · 2GM*]
    ]
  ))
})
#pagebreak()

///////////////////////////////////////////////////////////////////////////////
// 2) ESPECIFICACIONES TÉCNICAS
///////////////////////////////////////////////////////////////////////////////
*ESPECIFICACIONES TÉCNICAS*

- Edición aniversario HdR (15º): homenaje al reloj de oficiales británicos (2GM)
- Esfera: negra (versión negra)
- Caja: acero, 42 mm
- Grosor: 11,6 mm
- Corona: estriada
- Cristal frontal: zafiro “domed” con antirreflejos interior incoloro
- Hermeticidad: WR 50 metros
- Paso de correa: 20 mm
- Movimiento: Seagull ST3620 (carga manual) en Acabado “elaboré”
- Lumen: Superluminova (verde y azul); segundera con lumen
- Trasera: tapa roscada de acero con cristal de zafiro (movimiento visto)
- Unidades: 100 relojes

#pagebreak()

///////////////////////////////////////////////////////////////////////////////
// 3) ORIGEN: “DIRTY DOZEN” Y EL HOMENAJE
///////////////////////////////////////////////////////////////////////////////
*ORIGEN Y CONTEXTO*

El *Dirty Fifteen* nace como celebración de los quince años de HdR (2007–2022),
con la voluntad de acercar a la comunidad el espíritu del reloj militar británico
de oficiales de la Segunda Guerra Mundial, inspirado en la mítica *Dirty Dozen*.

Durante el conflicto, el Ministerio de Defensa del Reino Unido definió la
especificación W.W.W. (*Watches, Wristlet, Waterproof*), que exigía relojes
robustos y fiables: caja de acero, resistencia al agua y a los golpes, y esfera
y agujas luminiscentes para garantizar la legibilidad.

Este proyecto es un homenaje contemporáneo, que recupera ese espíritu histórico en una pieza
accesible y funcional.

#pagebreak()

///////////////////////////////////////////////////////////////////////////////
// 4) CONCEPTO: RELOJ DE OFICIALES 2GM
///////////////////////////////////////////////////////////////////////////////
*RELOJ DE OFICIALES · SEGUNDA GUERRA MUNDIAL*

La propuesta se plantea como un reloj “de servicio”: legible, sobrio y resistente.
El documento lo describe como un reloj que cumple con las exigencias del reloj
de oficiales del ejército británico: resistencia al agua, antichoque y antimagnético,
con cristal irrayable y un movimiento de precisión, reserva de marcha y durabilidad
ya “legendarias”.

Además, se incorpora una trasera con cristal de zafiro para disfrutar del calibre,
sumando el placer mecánico a un conjunto de inspiración histórica.

#pagebreak()

///////////////////////////////////////////////////////////////////////////////
// 5) DISEÑO Y DECISIONES DE TAMAÑO
///////////////////////////////////////////////////////////////////////////////
*AFRIKA KORPS* 

ACHTUNG!
Erwin Rommel y su Afrika Korps escribieron historia en las arenas del desierto del Sáhara, 
siendo una de las formaciones militares más famosas y respetadas de la segunda guerra mundial. 
Este gran estratega destacó por su habilidad en el despliegue de tropas mecanizadas y maravilló a sus propios enemigos que le enfundaron un enorme respeto.

*DISEÑO Y DECISIONES CLAVE*

Se fabrica en dos tamaños: 36 mm (automático) y 42 mm (manual).
El Afrika Korps de 36 lleva una cruz del ejército alemán en sustitución de la palmera del de 42.

#pagebreak()

///////////////////////////////////////////////////////////////////////////////
// 6) MOVIMIENTO Y EXPERIENCIA
///////////////////////////////////////////////////////////////////////////////
*MOVIMIENTO Y EXPERIENCIA DE USO*

El Seagull ST3620 es un movimiento de carga manual pensado para durar,
con una reserva declarada de 55 horas y acabados cuidados (“elaboré” con tornillería
azulada). 

El calibre Seagull ST1701 es un movimiento automático.

En el caso de los 42 la tapa trasera con zafiro permite contemplar el movimiento en funcionamiento,
algo poco habitual en relojes de estética “tool watch”, y que se integra como rasgo distintivo del aniversario.

*Uso recomendado:*
- Dar cuerda de forma regular, sin forzar al final del recorrido.
- Evitar golpes fuertes y campos magnéticos intensos.

#pagebreak()

///////////////////////////////////////////////////////////////////////////////
// 7) HdR · 15º ANIVERSARIO (2007–2022)
///////////////////////////////////////////////////////////////////////////////
HdR nace en 2007 como un punto de encuentro para aficionados a la relojería,
con una filosofía clara: compartir conocimiento, pasión y criterio, siempre
desde el respeto por la historia y la técnica relojera.

Quince años después, este aniversario se celebra con un proyecto que resume
esa identidad colectiva. El *Dirty Fifteen* no es solo un reloj, sino un
homenaje al camino recorrido por la comunidad y a los valores que la han
definido desde el principio: camaradería, espíritu crítico y relojería
entendida como herramienta.

El aniversario 2007–2022 se materializa así en una pieza que reinterpreta
el reloj de oficiales de la Segunda Guerra Mundial con criterios actuales,
sin perder su esencia funcional y sobria.

#pagebreak()

///////////////////////////////////////////////////////////////////////////////
// 8) BACK COVER
///////////////////////////////////////////////////////////////////////////////
#image("dirty_fifteen_back.jpeg", width: 100%, height: 50%, fit: "cover")

#place(top + left, dx: 5mm, dy: 45mm, box(width: 100% - 10mm, text(black, size: 7pt)[
Homenaje aniversario de HdR al reloj de oficiales británico de la 2GM: un “Dirty Fifteen”
de espíritu herramienta, con estética sobria, lumen funcional y el placer de la carga manual.
Trasera con zafiro para disfrutar del Seagull ST3620 y grabado conmemorativo.
]))

#place(bottom + left, dx: 5mm, dy: -5mm, text(black, size: 7pt)[
_Dirty Fifteen · HdR 15º aniversario_
]))
