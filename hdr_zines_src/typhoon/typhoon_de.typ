#import "../../src/lib.typ": watch_zine

#set document(author: "HdR", title: "RSWC Super Stellar Typhoon")
#set text(font: "Carlito", size: 7pt, lang: "de")

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
  image("typhoon_front.jpeg", width: 100%, height: 100%, fit: "cover")
  place(top + center, dy: 3mm, box(
    fill: rgb(0, 0, 0, 150),
    inset: 8pt,
    radius: 4pt,
    text(white, stroke: 0.5pt + black)[
      #text(size: 12pt)[*RSWC*]\ 
      #text(size: 10pt)[*Super Stellar*]\ 
      #text(size: 10pt)[*Typhoon*]
    ]
  ))
})#pagebreak()

*TECHNISCHE DATEN*

- Titan Grad 2 mit DLC-Beschichtung
- Durchmesser: 48 mm
- Steg zu Steg: 52 mm
- Anstoßbreite: 24 mm
- Frontglas: Saphir mit blauem AR
- Rückglas: Saphir
- Zifferblatt: blau (Aerospace-Ton)
- Vollständige blaue Swiss SLN
- Innerer Zweiweglinnet (Krone 9h)
- Wasserdichtigkeit: 100 m (10 bar)
- Verschraubte Krone bei 9 Uhr
- Nylonband blau mit Titanschließe
- Digitalmodul SKMEI 2049
- Analogwerk Miyota 2035
- Batterien: CR2025 + SR626SW

#pagebreak()

*BESCHREIBUNG UND INSPIRATION*

Der RSWC Super Stellar Typhoon entstand 
aus dem Bedarf an einem modernen, 
präzisen und zuverlässigen Fluginstrument 
für die Piloten der spanischen Luft- und 
Raumfahrttruppe.

Das Titangehäuse bietet außergewöhnliche 
Leichtigkeit ohne strukturelle Festigkeit 
zu opfern. Die DLC-Behandlung 
(Diamond-Like Carbon) fügt eine Schicht 
extremer Härte gegen Reibung und 
Kratzer hinzu.

Hybridmodul: Das SKMEI 2049 liefert 
digitale Funktionen (Alarm, Split-Chrono, 
Dual Time, Countdown), während das 
Miyota 2035 analoge Präzision auch 
unter extremen 9G-Kräften sicherstellt.

#pagebreak()

*VALIDIERUNG IM ECHTEN FLUG*

Vor der Serienproduktion führte das 
Ala 14 der spanischen Luft- und Raum-
fahrttruppe (Stützpunkt Albacete) 
umfangreiche Echtflugtests an Bord 
des Eurofighter Typhoon durch.

Die Piloten setzten den Zeitmesser 
folgenden Bedingungen aus:
- 9G-Fliehkraftmanöver
- Plötzliche Kabinendruckwechsel
- Extremtemperaturen (+40°C / -50°C)
- Konstante Vibration der EJ200-Motoren
- Starke Sonnenstrahlung bei 11.000 m

Ergebnis: Mit Auszeichnung bestanden

#pagebreak()

*DIGITALMODUL SKMEI 2049*

TASTEN
#v(-0.5em)

- Links oben: LICHT, rechts: START
- Links unten: MODE, rechts: RESET

UHRZEIT UND DATUM EINSTELLEN
#v(-0.5em)

- RESET 3 Sek. gedrückt halten
- MODE wählt Feld (Sek/Min/Std/...)
- START passt Werte an

ALARM
#v(-0.5em)

- RESET 3 Sek. halten
- MODE wählt Feld, START passt an
- Im Alarmmodus mit RESET aktivieren

CHRONOGRAPH
#v(-0.5em)

- START: starten/pausieren
- RESET: Split (aktiv) oder Reset (gestoppt)

#pagebreak()

*DIGITALMODUL (FORTSETZUNG)*

DUAL TIME (ZWEITE ZEITZONE)
#v(-0.5em)

- Mit MODE bis Dual Time wechseln
- RESET 3 Sek. halten zum Einstellen
- MODE wählt Feld, START passt an
- Zeigt beide Zeitzonen gleichzeitig

TIMER (COUNTDOWN)
#v(-0.5em)

- Mit MODE bis Timer wechseln
- RESET 3 Sek. halten zum Einstellen
- MODE wählt Sek/Min/Std, START passt an
- START startet/pausiert Countdown

SONSTIGES
#v(-0.5em)

- LICHT: Hintergrundbeleuchtung
- Batterie CR2025 (3V, Laufzeit 2-3 Jahre)

#pagebreak()

*ANALOGWERK MIYOTA 2035*

EIGENSCHAFTEN
#v(-0.5em)

Das Miyota 2035 ist ein präzises Quarzwerk:
- Höchst zuverlässiges Rotorkaliber
- Batterietyp: SR626SW / 377
- Laufzeit: 24–36 Monate
- Frequenz: 32.768 Hz
- Genauigkeit: ±20 Sek./Monat

ZEITEINSTELLUNG
#v(-0.5em)

- Krone bei 3 Uhr herausziehen
- Krone drehen zum Vor-/Zurückstellen
- Krone eindrücken zum Bestätigen

WARTUNG
#v(-0.5em)

- Kein Sonderservice für 2-3 Jahre normaler Nutzung
- Gehäuserückwand nicht unnötig öffnen

#pagebreak()

#image("typhoon_back.jpeg", width: 100%, height: 50%, fit: "cover")

#place(top + left, dx: 5mm, dy: 45mm, box(width: 100% - 10mm, text(black, size: 7pt)[
Saphirglas-Gehäuseboden.

Emblem des Eurofighter-Konsortiums:

Spanien · Italien · Deutschland · \ 
Großbritannien
]))

#place(bottom + left, dx: 5mm, dy: -5mm, text(black, size: 7pt)[
_RSWC · Hablemos de Relojes_
])
