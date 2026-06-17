#import "../../src/lib.typ": watch_zine

#set document(author: "HdR", title: "RSWC Super Stellar Cosmotemp")
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
  image("cosmotemp_front.jpeg", width: 100%, height: 100%, fit: "cover")
  place(top + center, dy: 3mm, box(
    fill: rgb(0, 0, 0, 150),
    inset: 8pt,
    radius: 4pt,
    text(white, stroke: 0.5pt + black)[
      #text(size: 12pt)[*RSWC*]\ 
      #text(size: 10pt)[*Super Stellar*]\ 
      #text(size: 10pt)[*Cosmotemp*]
    ]
  ))
})#pagebreak()

*TECHNISCHE DATEN*

- Gehäuse aus Swiss-Grade 316L-Stahl
- Saphirglas mit AR-Beschichtung innen
- Verschraubter gravierter Gehäuseboden
- Wasserdichtigkeit: 5 ATM (50 Meter)
- Edelstahlarmband mit Schnellwechsel
- Digitalmodul SKMEI 2198
- Digitale Vollausstattung:
  - Zeit, Minuten, Sekunden
  - Vollkalender 
  - *Thermometer: -10°C +50°C*
  - *Chronograph bis 1/1000s*
  - Dual Time (zweite Zeitzone)
  - Alarm und Stundensignal
  - Countdown-Timer
  - LCD-Beleuchtung
  - Niedrigbatteriestandsanzeige

#pagebreak()

*ERSTER RSWC-DIGITAL*

Der Cosmotemp markiert einen
historischen Meilenstein: die
erste vollständig digitale
Uhr von RSWC.

Im Forum Hablemos de Relojes
geboren, Nachfolger von
"risingsunwatches" und Gründer
des "Comando G" – der ersten
G-Shock-Sammlergemeinschaft.

Dieses Projekt feiert die
japanischen Uhren, die uns
begeisterten. Ein Tribut an
klassische Casio-Digitals mit
Premiumqualität, die kein
Casio je hatte.

#pagebreak()

*HOMMAGE AN DIE 80ER JAHRE*

Die Digitals der 80er waren 
revolutionär. Casio World Time, 
Databank, die ersten Citizen 
Ana-Digi-Temp: Zukunfts-
technologie am Handgelenk.

Der Cosmotemp erweckt diese 
Magie neu: Thermometer 
(-10°C bis +50°C) und 
Millimeterpräzisions-
Chronograph (1/1000 Sek.).

Aber er hebt es an: unzerkratz-
bares Saphirglas, Swiss-Grade-
Stahl, solide Konstruktion. 
Verbesserte Nostalgie. Die 
erträumte Zukunft, mit der 
Qualität von heute gebaut.

#pagebreak()

*DIGITALMODUL SKMEI 2198*

TASTEN UND STEUERUNG
#v(-0.5em)

- *LIGHT*: Beleuchtung halten
- *MODE*: Modus wechseln
- *SELECT-START/STOP*: Anpassen
- *SPT.RE.SET*: Felder weiterschalten

MODI: T1 → DATE → ALM → T2 → SW

UHRZEIT UND DATUM EINSTELLEN
#v(-0.5em)

- MODE bis T1 (Uhrzeit)
- SELECT-START/STOP: anpassen
- SPT.RE.SET: weiterschalten
- Bestätigen MODE (oder 3 Sek.)

THERMOMETER
#v(-0.5em)

- Dials A1 und A2
- SELECT-START/STOP: aktivieren
- 15 Min. ablegen für Genauigkeit
- -10°C bis +50°C (±1°C)

#pagebreak()

*HAUPTFUNKTIONEN*

CHRONOGRAPH (SW)
#v(-0.5em)

- MODE bis SW
- SELECT-START/STOP: starten/pausieren
- SPT.RE.SET: SPL (Split) oder Reset
- *Präzision: 1/1000 Sek.*

DUAL TIME (T2)
#v(-0.5em)

- MODE bis T2
- Wie T1 einstellen (Hauptuhrzeit)
- SELECT-START/STOP und SPT.RE.SET

ALARM (ALM)
#v(-0.5em)

- MODE bis ALM
- SELECT-START/STOP: ein-/ausschalten
- Uhrzeit mit Tasten einstellen
- CHI: Stundensignal

#pagebreak()

*WEITERE FUNKTIONEN*

TIMER
#v(-0.5em)

- MODE bis Timer
- SELECT-START/STOP und SPT.RE.SET: einstellen
- SELECT-START/STOP: starten/pausieren

KALENDER (DATE)
#v(-0.5em)

- MODE bis DATE
- Automatisch bis 2099
- Erkennt Schaltjahre

HINTERGRUNDBELEUCHTUNG
#v(-0.5em)

- SPT.RE.SET/LIGHT gedrückt halten
- Dauer: ca. 3 Sekunden

BATTERIE
#v(-0.5em)

- CR2016 oder CR2025
- Lebensdauer: 1–2 Jahre

#pagebreak()

#block({
  image("cosmotemp_back.jpeg", width: 100%, height: 50%, fit: "cover")
})

#place(top + left, dx: 5mm, dy: 45mm, box(width: 100% - 10mm, text(black, size: 7pt)[
Der gravierte verschraubte Gehäuseboden zeigt kosmische Motive, 
inspiriert von Raumfahrt und wissenschaftlicher Erkundung. Ein 
Tribut an die Ära, als Digitaluhren die technologische Zukunft 
verkörperten.
]))

#place(bottom + left, dx: 5mm, dy: -5mm, text(black, size: 7pt)[
_RSWC · Hablemos de Relojes_
])
