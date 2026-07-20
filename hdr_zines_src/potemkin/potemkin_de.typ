#import "../../src/lib.typ": watch_zine

#set document(author: "HdR", title: "RSWC Potemkin")
#set text(font: "Carlito", size: 7pt, lang: "de")
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
  image("potemkin_front.jpeg", width: 100%, height: 100%, fit: "cover")
  place(top + center, dy: 3mm, box(
    fill: rgb(0, 0, 0, 150),
    inset: 8pt,
    radius: 4pt,
    text(white, stroke: 0.5pt + black)[
      #text(size: 12pt)[*RSWC*]\ 
      #text(size: 10pt)[*Potemkin*]
    ]
  ))
})#pagebreak()

*TECHNISCHE DATEN*
- Gehäuse 45 mm von Spitze zu Spitze
  (43,5 mm von Mitte zu Mitte)
- Lug to lug: 49 mm
- Höhe: 14 mm (15 mm mit Glas)
- Bandanstoß: 22 mm
- Automatikwerk Miyota 8205
- Doppelkalender in Kyrillisch
- Planes Saphirglas, blaue AR
- Zweifarbige Saphirlünette rot/blau
- Gravierter *Oil-Press*-Boden
- Wasserdichtigkeit: 300 m (30 ATM)
- Zwei Versionen: *Zavod* und *Vintage*
- Milanaise-Armband aus Stahl

#pagebreak()

*EINE GESCHICHTE, KEINE UHR*

Manche Uhren entstehen aus einem
Werk, andere aus einem Gehäuse. Nur
wenige aus einer Geschichte. Die
Potemkin gehört zu diesen wenigen.

Ausgangspunkt war die Slava Sadko,
ein sowjetischer Kult-Diver mit
einem Gehäuse im Stil der Zodiac
Olympos, einer Marke, die es nicht
mehr gibt.

RSWC suchte einen ehrgeizigeren
roten Faden: *Das Panzerkreuzer
Potemkin*, das Meisterwerk, das
Sergei Eisenstein 1925 drehte und
das hundert Jahre später einer der
einflussreichsten Filme der Kino-
geschichte bleibt.

#pagebreak()

*DER FILM*

Die Besatzung der Potemkin meutert,
als sie entdeckt, dass die Offiziere
sie zwingen wollen, verdorbenes
Fleisch zu essen.

Während der Meuterei stirbt der
Matrose Wakulinchuk. Sein Leichnam
erreicht Odessa, und die Bevölkerung
solidarisiert sich mit dem Schiff.

Die zaristische Antwort wird zu einer
der berühmtesten Szenen des Kinos:
das Massaker auf der Treppe von
Odessa.

Am Ende weigert sich der Rest der
Flotte, auf die Potemkin zu
schießen: eine Meuterei, die eine
größere Revolution ankündigt.

Hundertjahrfeier 1925-2026: keine
reale Uhr, sondern eine mögliche.

#pagebreak()

*DAS DESIGN*

Das Gehäuse bewahrt den Geist der
Sadko und ihre von der Zodiac
Olympos inspirierten Formen in
einem völlig neuen Stück.

45 mm Breite, real 43,5 mm von Mitte
zu Mitte: ausgewogener am Handgelenk
als vermutet. L2L nur 49 mm.

Das plane Glas ragt kaum einen
Millimeter über die Lünette hinaus.

Das blaue Zifferblatt trägt die
Marke *ЧКВС* (Kyrillisch für RSWC),
*АВТОПОДЗАВОД* ("Automatik") und
*ПОТЁМКИН*. Darunter die Lenin-Losung
*МИР, ЗЕМЛЯ, ХЛЕБ* ("Frieden, Land, Brot").

Zweifarbiger *Oil-Press*-Boden mit
dem Panzerkreuzer, dem Matrosen
und der Treppe von Odessa.

#pagebreak()

*ZAVOD UND VINTAGE*

Die Potemkin existiert in zwei
Lesarten desselben Gehäuses.

*Zavod* (russisch für "Fabrik")
zeigt die Uhr so, wie sie in den
siebziger Jahren aus einer
sowjetischen Fabrik hätte kommen
können, mit zeitgenössisch weißem
Leuchtstoff.

*Vintage* zeigt das Erscheinungsbild
eines Exemplars, das ein halbes
Jahrhundert Geschichte überstanden
hätte, mit gealtertem Leuchtstoff,
der den Lauf der Zeit heraufbeschwört.

Beide teilen Gehäuse, Glas, Lünette
und gravierten Boden: nur der Ton
des Leuchtstoffs und der Charakter
am Handgelenk ändern sich.

#pagebreak()

*GEBRAUCHSANLEITUNG*

Das Kaliber Miyota 8205 ist
automatisch: es lädt sich durch die
Handgelenkbewegung auf und erlaubt
manuelles Aufziehen über die Krone
(etwa 20-30 Umdrehungen).

*Datum- und Wochentag:* Krone
losschrauben; erste Position stellt
Datum und Wochentag, zweite die
Uhrzeit. Kalender nicht zwischen
21:00 und 03:00 Uhr verstellen.

*Krone und Wasserdichtigkeit:*
Krone nach Gebrauch stets
zuschrauben, für die 300 m
Wasserdichtigkeit. Nach Salzwasser
mit Süßwasser abspülen.

*Wartung:* regelmäßige Prüfung der
Dichtungen, Service alle 4-5 Jahre.

#pagebreak()

#image("potemkin_back.jpeg", width: 100%, height: 50%, fit: "cover")

#place(top + left, dx: 5mm, dy: 42mm, box(width: 100% - 10mm, text(black, size: 6.3pt)[
Zweifarbiges *Oil-Press*-Medaillon: Stern, Panzerkreuzer und Matrose mit
*«ВСЯ ВЛАСТЬ СОВЕТАМ»* ("alle Macht den Sowjets").

Äußerer Ring: *«БРОНЕНОСЕЦ ПОТЁМКИН СЕРГЕЯ ЭЙЗЕНШТЕЙНА»* ("Potemkin von Eisenstein")
und *«САПФИРОВОЕ СТЕКЛО / 30 АТМ / 300 М»* ("Saphirglas/30 ATM/300 M").
]))

#place(bottom + left, dx: 5mm, dy: -5mm, text(black, size: 7pt)[
_RSWC · Hablemos de Relojes_
])
