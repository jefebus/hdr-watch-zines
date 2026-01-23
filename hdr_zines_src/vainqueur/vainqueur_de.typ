#import "../../src/lib.typ": watch_zine

#set document(author: "HdR", title: "RSWC Vainqueur")
#set text(font: "Carlito", size: 7pt, lang: "de")

#set page("a4")

// update heading rule to show that style is preserved
#show heading.where(level: 1): hd => {
  pad(top: 2em, text(10em, align(center, hd.body)))
}

#show: watch_zine.with(
  digital: json(bytes(sys.inputs.at("digital", default: "false"))),
  draw-border: true // draw border boxes in printing mode
)

// cover

#block({
  image("vainqueur_front.jpeg", width: 100%, height: 100%, fit: "cover")  
  place(top + center, dy: 5mm, text(white, size: 20pt)[
      *RSWC*\ 
      *Vainqueur*
  ])
})

#pagebreak()

*TECHNISCHE DATEN*

- Zweiteiliges Gehäuse aus Edelstahl 316L
- Quadratisches Gehäuse: 39 x 39 mm
- Dicke: 16,60 mm
- Bandanstoß zu Bandanstoß: 46,5 mm
- Bandanstoßbreite: 22 mm
- Saphirglas mit Antireflexbeschichtung
- Kaliber: Peacock SL4617, Automatikwerk mit 28.800 Halbschwingungen pro Stunde
- Chronograph, Datumsanzeige bei 6 Uhr 
-Leuchtmasse auf Indizes und Zeigern. C3-Zeiger / BGW9-Markierungsindizes
- Wasserdichtigkeit: 50 Meter
- Gewicht: 120 Gramm


#pagebreak()

*UHRBESCHREIBUNG*

Die Vainqueur verfügt über ein quadratisches Gehäuse mit 39 mm 
Kantenlänge aus 316L-Edelstahl. Die Gehäusedicke beträgt an der 
dicksten Stelle 16,6 mm. Mit einer Länge von 46,5 mm passt sie an 
viele Handgelenke.

Das Zifferblatt ist mit Hilfszifferblättern ausgestattet: einer 
kleinen Sekunde bei 9 Uhr und einem 30-Minuten-Chronographen bei 
3 Uhr. Die applizierten Stundenmarkierungen aus Stahl sorgen für 
einen starken Kontrast. Ein Saphirglas mit Antireflexbeschichtung 
schützt das Zifferblatt.

#pagebreak()

*FARBPALETTE*

*Anthrazit: (Limitiert - 34 Stück)*\ 
Pure und zeitlose Eleganz. Vielseitig für jeden Anlass.

*Nachtviolett: (Lim. 44 St.)*\ 
Eine Edition für Mutige.

*Côte d’Azurblau: (Lim. 156 St.)*\ 
Inspiriert von mediterraner Gelassenheit.

*Rosso Italia (Lim. 39 St)*\ 
Eine Hommage an die legendäre Farbe der Formel 1.

*Nanoblau/Gelb (Lim. 70 St.)*\ 
Eine Sonderedition, die an epische Duelle erinnert. Legendäre Rivalitäten, in Stahl verewigt.

#pagebreak()

*FORMEL-1-INSPIRATION*

Die *Vainqueur* verdankt ihren Namen dem Formel-1-Sieg und seinem Geist.
Genau wie sich die Formel-1-Rennwagen in den letzten 75 Jahren zu 
hochpräzisen Maschinen entwickelt haben, verkörpert RSWC diese 
Leidenschaft für Exzellenz in Stahl und mechanischen Uhrwerken.

Jedes Detail spiegelt dieses Streben wider: automatischer Chronograph, 
zweiteiliges Gehäuse, Saphirglas. Die Sonderfarben – Rosso Italia und 
Nano Blue/Yellow – sind eine Hommage an die legendären Rivalitäten der 
Formel 1. Eine Uhr, die Geschwindigkeit feiert und ihr Erbe respektiert.

#pagebreak()

*AUTOMATISCHER CHRONOGRAPH*

Einen erschwinglichen automatischen Chronographen herzustellen, 
ist keine leichte Aufgabe. Automatische Chronographenwerke sind 
komplex und teuer in der Fertigung, weshalb sie üblicherweise 
Luxusuhren vorbehalten sind. RSWC ist es gelungen, ein voll 
funktionsfähiges Peacock SL4617 zu integrieren, ein Werk, das 
auf dem renommierten Valjoux 7750 basiert. Mit einem 
30-Minuten-Subchronographen, garantierter Präzision und bewährter
Langlebigkeit ist diese Uhr ideal für alle, die pure Mechanik zu 
einem fairen Preis suchen.

#pagebreak()

*PFLEGE- UND WARTUNGS-HINWEISE*

*Zeiteinstellung:* Ziehen Sie die Krone auf die zweite Position. 
Drehen Sie sie vorsichtig auf die gewünschte Uhrzeit.

*Datumeinstellung:* Ziehen Sie die Krone auf die erste Position. 
Drehen Sie sie vorwärts, um das Datum einzustellen. Vermeiden 
Sie Änderungen zwischen 22:00 und 2:00 Uhr. 

*Chronographen Funktion:* Drücken Sie den Drücker bei 2 Uhr, 
um den Chronographen zu starten, und erneut, um ihn zu stoppen. 
Drücken Sie den Drücker bei 4 Uhr, um den Chronographen zurückzusetzen. 
Im Normalbetrieb wird empfohlen, den Chronographen angehalten zu lassen. 
Der zentrale Sekunden-zeiger bleibt stehen, während der Sekundenzeiger 
bei 9 Uhr die Sekunden auf der Uhr anzeigt.

#pagebreak()

#image("vainqueur_back.jpeg", width: 100%, height: 50%, fit: "cover")

#place(top + left, dx: 5mm, dy: 45mm, box(width: 100% - 10mm, text(black, size: 7pt)[
Der verschraubte Gehäuseboden gibt den Blick auf ein Saphirglas frei, 
durch das man das Wippenrad des Peacock SL4617-Uhrwerks 
in seiner ständigen Bewegung bewundern kann.
]))

#place(bottom + left, dx: 5mm, dy: -5mm, text(black, size: 7pt)[
_RSWC · Hablemos de Relojes_
])
