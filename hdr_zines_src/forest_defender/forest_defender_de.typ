#import "../../src/lib.typ": watch_zine

#set document(author: "HdR", title: "RSWC Forest Defender")
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
  image("forest_defender_front.jpeg", width: 100%, height: 100%, fit: "cover")
  place(top + center, dy: 3mm, box(
    fill: rgb(0, 0, 0, 150),
    inset: 8pt,
    radius: 4pt,
    text(white, stroke: 0.5pt + black)[
      #text(size: 12pt)[*RSWC*]\ 
      #text(size: 10pt)[*Forest Defender*]
    ]
  ))
})#pagebreak()

*TECHNISCHE DATEN*
- 316L Swiss-Grade Stahl mit DLC
- 42mm ohne Krone, Steg: 51mm
- Dicke: 14,3mm
- Anstoßbreite: 24mm, Schließe: 20mm
- Verschraubte Drücker, Passstifte
- Verschraubte Krone 7mm RSWC-signiert
  mit Kronenschützern
- Wasserdichtigkeit: 100 Meter
- Doppeldatum schwarz custom
- Saphirlinnet einseitig 120 Clicks
- Swiss SLN BGW9: Zeiger, Indizes, Linnet
- Flaches Saphirglas mit AR/AR innen
- Lederband mit RSWC-gravierter Schließe
- Peacock SL-4601, Automatik-Chronograph
- 28.800 TH, 28 Rubine, 45 Std. Reserve
#pagebreak()

*HOMMAGE AN DIE WALDBRANDKÄMPFER*

Der RSWC Forest Defender ist eine 
Hommage an alle, die in Spanien 
gegen das Feuer kämpfen: UME, 
Berufsfeuerwehr, Waldschutzkräfte, 
Freiwillige, BRIF, Guardia Civil, 
Zivilschutz und alle Einheiten, 
die ihr Leben riskieren, um 
unsere Wälder zu schützen.

Dieser automatische Chronograph 
mit ikonischem Vierkantgehäuse 
umfasst spezifische Werkzeuge für 
Notfallteams: Feuerwehrskala am 
Linnet und Pulsmesser im Inneren.

Verfügbar in zwei Versionen: 
Firefighter (Feuerwehr) und 
Professional (Taktik und Rettung).

#pagebreak()

*FEUERWEHRSKALA*

Der drehbare Saphirlinnet mit 
120 Clicks verfügt über eine 
Spezialskala in Limongrün und 
Rot zur Kontrolle kritischer 
Zeiten mit Atemschutzgeräten.

Grüne Zone (15 Minuten): Sichere 
Einsatzzeit, bevor Sicherheits-
vorkehrungen eingeleitet werden.

Rote Zone (nächste 15 Min.):
Zeigt an, dass die Gefahrenzone 
verlassen werden muss.

Konzipiert für Eliteeinheiten zu 
Land und unter Wasser. Farben 
optimiert für maximale Ablesbar-
keit unter Extrembedingungen.

#pagebreak()

*INTEGRIERTER PULSMESSER*

Der Innenlinnet verfügt über einen 
Pulsmesser zur schnellen Herzfre-
quenzmessung mit dem Chronographen.

Verwendung: Chronographen starten, 
sobald der Puls lokalisiert ist. 
15 Herzschläge zählen und den 
Chronographen stoppen. Die Position 
des Schleppers zeigt die Herzfrequenz 
in Schlägen pro Minute.

Konzipiert für Feuerwehrleute 
und Sanitäter, die in Notfall-
situationen schnelle Bewertungen 
benötigen.

#pagebreak()

*DLC-BEHANDLUNG UND KONSTRUKTION*

Das Gehäuse trägt DLC-Beschichtung 
(Diamond-Like Carbon) für erhöhte 
Härte und Kratzresistenz. Ideal 
für den professionellen Einsatz 
unter Extrembedingungen.

Der Saphirlinnet ermöglicht mehr 
als zwei Farben (Keramik erlaubt 
nur zwei). Die 120 Clicks bieten 
eine Präzision von 30 Sekunden 
pro Click.

Peacock SL-4601: Mechanischer 
Automatik-Chronograph mit 28 
Rubinen, 28.800 TH und 45 Stunden 
Gangreserve. Handaufzug inbegriffen.

#pagebreak()

*FÜNF VERFÜGBARE VERSIONEN*

UME3: Sonderedition 20. Jahrestag 
der UME in DLC-Schwarz. Wappen-
gravur auf der Vorderseite.
Linnet mit Feuerwehrskala.

Firefighter: Feuerwehrskala 
(Grün/Rot). Für Berufsfeuerwehr, 
Waldschutzkräfte, BRIF.
In DLC-Schwarz und Stahl.

Professional: Taktischer 
Countdown-Linnet. Für Guardia 
Civil, Polizei, Zivilschutz, 
Freiwillige, Rettungsdienste.
In DLC-Schwarz und Stahl.

Identische Spezifikationen.
Nummerierte Limitierte Edition.

#pagebreak()

#image("forest_defender_back.jpeg", width: 100%, height: 50%, fit: "cover")

#place(top + left, dx: 5mm, dy: 45mm, box(width: 100% - 10mm, text(black, size: 7pt)[
Rückseitengravur mit Widmung an alle Einheiten, die unsere Wälder 
schützen. Jede Einheit trägt die Aufschrift "Limited Edition 1 of xxx" 
gemäß Gesamtstückzahl.
]))

#place(bottom + left, dx: 5mm, dy: -5mm, text(black, size: 7pt)[
_RSWC · Hablemos de Relojes_
])
