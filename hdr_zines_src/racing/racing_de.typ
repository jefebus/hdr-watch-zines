#import "../../src/lib.typ": watch_zine

#set document(author: "HdR", title: "RSWC Racing & Space")
#set text(font: "Carlito", size: 7pt, lang: "de")
#set page("a4")

#show heading.where(level: 1): hd => {
  pad(top: 2em, text(10em, align(center, hd.body)))
}

#show: watch_zine.with(
  digital: json(bytes(sys.inputs.at("digital", default: "false"))),
  draw-border: true
)

// Seite 1 - Titelseite
#block({
  image("racing_front.jpeg", width: 100%, height: 100%, fit: "cover")
  place(top + center, dy: 3mm, box(
    fill: rgb(0, 0, 0, 150),
    inset: 8pt,
    radius: 4pt,
    text(white, stroke: 0.5pt + black)[
      #text(size: 12pt)[*RSWC*]\ 
      #text(size: 10pt)[*Karussell & Moeris Lacus*]
    ]
  ))
})#pagebreak()

// Seite 2 - Technische Daten
*TECHNISCHE DATEN*

*Gehäuse*: 316L-Stahl, 42,5×47mm
10 ATM. Verschraubte RSWC-Krone.
Gehäuseboden mit Reliefprägung.

*Werk*: Seiko Epson VS75
Solar-Chronograph.
Unbegrenzte Gangreserve.

*Glas*: Flaches Saphirglas mit
Antireflexbeschichtung.

*Zifferblatt*: Mattschwarz. SLN
BG-W9 Güte X1. Tachymeter.

*Armband*: Massiver Stahl mit
poliertem Mitteldetail. Falt-
schließe mit Feineinstellung.
#pagebreak()

// Seite 3 - Nürburgring
*NÜRBURGRING: DIE GRÜNE HÖLLE*

Nordschleife: 26 km, 90 Kurven.
Die legendärste und anspruchs-
vollste Formel-1-Rennstrecke.

Seit 1927 sahen hier die Größten:
Fangio, Moss, Stewart, Lauda.
Der Ort, wo "Ringmeister" geformt
werden.

*DIE KARUSSELL-KURVE*

Die berühmteste Kurve des Kurses.
Eine steil überhöhte Kehre, die
die Gesetze der Physik heraus-
fordert. Absolute Präzision nötig:
Auto in die Mitte, maximale
Neigung halten und von der Kurve
herauskatapultieren lassen.

Ein Fehler und man fliegt.
Karussell ist reine Algebra.
#pagebreak()

// Seite 4 - GP 1968
*GROSSER PREIS VON DEUTSCHLAND 1968*

4. August 1968. Regen, Nebel,
extreme Bedingungen.

Jackie Stewart, mit gebrochenem
Handgelenk, gewinnt mit 4 Minuten
Vorsprung – was viele für den
größten Sieg der F1-Geschichte
halten.

"Wenn du keine Angst hattest,
bist du nicht schnell genug
gefahren" — Stewart über den
Nürburgring.

*KARUSELL RACING*

Unser erstes Modell ehrt diese
deutsche Rennstrecke und ihre
legendäre Kurve. Zifferblatt mit
fluoreszierenden Orangedetails
wie die Monoposti jener Zeit.
#pagebreak()

// Seite 5 - ExoMars
*EXOMARS: AUF DER SUCHE NACH LEBEN*

ESA-Mission zur Suche nach Leben
auf dem Mars. Die ExoMars Trace
Gas Orbiter-Sonde sucht Methan
und Gase, die biologische
Aktivität anzeigen könnten.

Das Schiaparelli-Modul versuchte
2016 zu landen. Obwohl es bei
300 km/h abstürzte, ebnete es
den Weg für künftige Missionen.

*MOERIS LACUS*

"Das Hauptmeer". Albedo-Region
auf dem Mars (7,91°N, 90°O).
1958 von der IAU anerkannt.

Es wird vermutet, dass es einst
Wasser und möglicherweise Leben
beherbergte – ein Rätsel, das
die ESA weiter untersucht.
#pagebreak()

// Seite 6 - Moeris Lacus Space
*MOERIS LACUS SPACE*

Das zweite Modell ehrt die
europäischen Raumfahrtmissionen
zum Mars und die Entdeckung
des Moeris Lacus.

Klares Zifferblatt mit weißen
Zeigern, im Stil eines Cockpit-
instruments für Astronauten.

Gravierter Gehäuseboden mit
Mars in Relief und orbitalem
Satelliten.

"Mars ist dort, wartet darauf,
erreicht zu werden"
— Buzz Aldrin

Beide Modelle teilen Qualität
und Spezifikationen, verschieden
im Thema: Erde vs. Weltraum,
Geschwindigkeit vs. Erkundung.
#pagebreak()

// Seite 7 - Bedienungshinweise
*BEDIENUNGSHINWEISE*

*Solarladung*: Zifferblatt natür-
lichem oder künstlichem Licht
aussetzen. Gangreserve: 6 Monate
bei Vollladung. Prolongierte
Dunkelheit vermeiden.

*Chronograph*: Obere Taste
startet/stoppt. Untere Taste
setzt auf null zurück. Orangefar-
bener Schlepper misst Sekunden.
Subzifferblätter: Minuten (9h)
und Stunden (3h).

*Wartung*: Dichtheit alle 2 Jahre
prüfen. Mit weichem Tuch reinigen.
Stöße und starke Magnetfelder
vermeiden.

*Akkumulator*: Wiederaufladbarer
Akku. Lebensdauer 10–15 Jahre
bei normalem Gebrauch.
#pagebreak()

// Seite 8 - Rückseite
#block({
  image("racing_back.jpeg", width: 100%, height: 50%, fit: "cover")
})

#place(top + left, dx: 5mm, dy: 45mm, box(width: 100% - 10mm, text(black, size: 7pt)[
Limitierte Solar-Chronographen. Hommage an die Nürburgring-
Rennstrecke und die europäischen Raumfahrtmissionen zum Mars.

Entwickelt von der HdR-Community mit Astar (2023).

Zwei Visionen, eine Exzellenz.
]))

#place(bottom + left, dx: 5mm, dy: -5mm, text(black, size: 7pt)[
_RSWC · Hablemos de Relojes_
])
