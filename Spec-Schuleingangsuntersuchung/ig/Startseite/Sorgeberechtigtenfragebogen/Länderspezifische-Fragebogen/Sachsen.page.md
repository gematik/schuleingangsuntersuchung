## {{page-title}}

### Sorgeberechtigtenfragebogen Schuleingangsuntersuchung Sachsen

[Download: CSV-Version der Tabelle](https://raw.githubusercontent.com/gematik/schuleingangsuntersuchung/main/Spec-Schuleingangsuntersuchung/questionnaireCSV/Questionnaire-SEU-Elternbefragung-SN.csv "Title")

| Link-ID | Text |  Typ | Enable When | Wertemenge | Herkunft | Nutzung |
|------------------|---------------|---------------|-------------|-------------|-------------|-------------|
| 0 | (0) Schule & Vorgangsnummer | group |  |  |  |  |
| 0.1h | Bitte tragen Sie die Grundschule ein, an der Sie Ihr Kind anmelden werden oder bereits angemeldet haben. Die Schule erhält eine Mitteilung über schulrelevante Ergebnisse. | display |  |  |  |  |
| 0.1 | (0.1) Name der Schule | string |  |  |  |  |
| 1 | (1) Personenbezogene Daten Kind | group |  |  |  |  |
| 1.1 | (1.1) Nachname des Kindes | string |  |  |  |  |
| 1.2 | (1.2) Vorname des Kindes | string |  |  |  |  |
| 1.3 | (1.3) Geburtsdatum | date |  |  |  |  |
| 1.6 | (1.6) In Deutschland geboren | boolean |  |  |  |  |
| 1.6.2 | (1.6.2) Geburtsland | choice | 1.6 = false | Afghanistan :: Ägypten :: Åland :: Albanien :: Algerien :: Amerik.-Jungferninseln :: Amerikanisch-Samoa :: Andorra :: Angola :: ... | DE-ST |  |
| 1.9 | (1.9) PLZ | string |  |  |  |  |
| 1.10 | (1.10) Wohnort | string |  |  |  |  |
| 1.11 | (1.11) Straße | string |  |  |  |  |
| 1.11a | (1.11a) Hausnummer | string |  |  |  |  |
| 2 | (2) Personenbezogene Daten Personensorgeberechtigter | group |  |  |  |  |
| 2.2 | (2.2) Nachname | string |  |  |  |  |
| 2.3 | (2.3) Vorname | string |  |  |  |  |
| 3 | (3) Familiendaten | group |  |  |  |  |
| 3.2 | (3.2) Familiäre Vorgeschichte | group |  |  |  |  |
| 3.2.5 | (3.2.5) Chronische Erkrankung | choice |  | Asthma bronchiale :: Rheuma :: Diabetes :: Epilepsie :: Neurodermitis :: Aufmerksamkeitsdefizit-/Hyperaktivitätsstörung (ADHS) :: Sonstige chronische Krankheiten  |  |  |
| 3.2.5.1 | (3.2.5.1) Welche sonstige(n) chronischen Erkrankung(en)? | string | 3.2.5 = sonstiges |  |  |  |
| 4 | (4) Kinderbetreuung | group |  |  |  |  |
| 4.0b | (4.0b) Ist das Kind in einem Kindergarten/einer Kindertageseinrichtung? | boolean |  |  |  |  |
| 4.6b | (4.6b) Name des Kindergartens | string | 4.0b = true |  |  |  |
| 4.6a | (4.6a) Anschrift des Kindergartens | string | 4.0b = true |  | DE-SN |  |
| 5 | (5) Schwangerschaft und Geburt | group |  |  |  |  |
| 5.2 | (5.2) Geburtsgewicht (in Gramm) | integer |  |  |  |  |
| 5.3a | (5.3a) Geburtslänge (in cm) | integer |  |  |  |  |
| 5.5 | (5.5) Auffälligkeit bei der Geburt | boolean |  |  |  |  |
| 5.5.1 | (5.5.1) Welche Auffälligkeit? | string | 5.5 = true |  |  |  |
| 6 | (6) Sprache | group |  |  |  |  |
| 6.1d | (6.1d) Kind wächst mehrsprachig auf | boolean |  |  | DE-BY |  |
| 6.4 | (6.4) Sprachauffälligkeiten | boolean |  |  |  |  |
| 7 | (7) Entwicklung | group |  |  |  |  |
| 7.3 | (7.3) Freies Laufen ab? (Monate) | integer |  |  |  |  |
| 7.4 | (7.4) Erste Worte ab? (Monate) | integer |  |  |  |  |
| 7.6 | (7.6) Tagsüber ohne Windeln ab? (Jahre) | integer |  |  |  |  |
| 7.9 | (7.9) Links- oder Rechtshänder | choice |  | Rechtshänder :: Linkshänder :: Beidhändig/Unentschieden :: Nicht feststellbar  |  |  |
| 7.12 | (7.12) Sorgen Sie sich um die Entwicklung ihres Kindes? | boolean |  |  |  |  |
| 7.12.1 | (7.12.1) Welche Sorgen | string | 7.12 = true |  |  |  |
| 8 | (8) Erkrankungen und gesundheitliche Einschränkungen | group |  |  |  |  |
| 8.3 | (8.3) Sehstörung vorhanden? | boolean |  |  |  |  |
| 8.3.1 | (8.3.1) Welche Sehstörung | string | 8.3 = true |  |  |  |
| 8.9 | (8.9) Schwere Hörstörung vorhanden? | boolean |  |  |  |  |
| 8.9.1 | (8.9.1) Welche Hörstörung | string | 8.9 = true |  |  |  |
| 8.14b | (8.14b) Bisher durchgemachte Erkrankungen, bspw. Windpocken oder Masern. Zeitlich nicht bestimmt | text |  |  | DE-BW |  |
| 8.15 | (8.15) Krankenhausaufenthalt | boolean |  |  |  |  |
| 8.15.1 | (8.15.1) Detaillierte Angaben zum Krankenhausaufenthalt? | string | 8.15 = true |  |  |  |
| 8.16a | (8.16a) Besitzt Ihr Kind Allergien? | choice |  | Atopische/Allergische Erkrankungen :: Nahrungsmittelallergien :: Pollenallergien :: Hausstaubmilbenallergien :: Schimmelpilzallergien :: Tierhaarallergien :: Medikamentenallergien :: Sonstige atopische/allergische Erkrankungen  |  |  |
| 8.16a.1 | (8.16a.1) Welche sonstigen Allergien? | string | 8.16a = sonstiges |  |  |  |
| 8.23 | (8.23) Regelmäßige Medikamenteneinnahme | boolean |  |  |  |  |
| 8.23.1 | (8.23.1) Welches Medikament | string | 8.23 = true |  |  |  |
| 8.27 | (8.27) Wurde Ihr Kind operiert | boolean |  |  |  |  |
| 8.31 | (8.31) Einnässen tags | boolean |  |  | DE-SL |  |
| 8.74 | (8.74) Hauterkrankungen | boolean |  |  | DE-SN |  |
| 8.75 | (8.75) Welche Hauterkrankungen | string | 8.74 = true |  | DE-SN |  |
| 8.76 | (8.76) Orthopädische Erkrankungen? | boolean |  |  | DE-SN |  |
| 8.77 | (8.77) Welche orthopädischen Erkrankungen | string | 8.76 = true |  | DE-SN |  |
| 9 | (9) Förderungen | group |  |  |  |  |
| 9.1a | (9.1a) Werden oder wurden bei Ihrem Kind jemals Förder- oder Heilmaßnahmen durchgeführt? (Mehrfachnennung möglich) | boolean |  |  | DE-SL |  |
| 9.1a.g | (9.1a.g) Therapien | group | 9.1a = true |  | DE-SN |  |
| 9.2 | (9.2) Sprachtherapie | choice |  | nein :: abgeschlossen :: läuft z.Zt. Noch :: geplant  |  |  |
| 9.2b | (9.2b) Logopädie | choice |  | Warteliste :: Ja :: Nein  | DE-BW |  |
| 9.2c | (9.2c) Ergotherapie | choice |  | Warteliste :: Ja :: Nein  | DE-BW |  |
| 9.2d | (9.2d) Psychotherapie | choice |  | Warteliste :: Ja :: Nein  | DE-BW |  |
| 9.3 | (9.3) Frühförderung | choice |  | nein :: abgeschlossen :: läuft z.Zt. Noch :: geplant  |  |  |
| 9.6 | (9.6) Physiotherapie | choice |  | nein :: abgeschlossen :: läuft z.Zt. Noch :: geplant  |  |  |
| 9.9 | (9.9) Integrative Betreuung | choice |  | nein :: abgeschlossen :: läuft z.Zt. Noch :: geplant  |  |  |
| 9.10 | (9.10) Sonstige Förderung | string |  |  |  |  |
| 11 | (11) Arzt | group |  |  |  |  |
| 11.2 | (11.2) Name Kinderarzt | string |  |  |  |  |
| 13 | (13) Informationen Eltern | group |  |  |  |  |
| 13.1 | (13.1) Schulabschluss 1. Elternteil | choice |  | Kein Schulabschluss :: Hauptschulabschluss :: Mittlere Reife oder vergleichbar :: Abitur/Fachhochschulreife oder vergleichbar :: Sonder-/Förderschule :: Derzeit noch in schulischer Ausbildung (Schüler*in)  |  |  |
| 13.5 | (13.5) Berufstätigkeit 1. Elternteil | choice |  | Nicht erwerbstätig :: Teilzeit :: Vollzeit  |  |  |
| 13.17 | (13.17) Deutsche Staatsangehörigkeit? Elternteil 1 | boolean |  |  | DE-BW |  |
| 13.19 | (13.19) in Deutschland geboren? Elternteil 1 | boolean |  |  | DE-BW |  |

<tabs>
    <tab title="Table">      
        {{table:SEU-Elternbefragung-SN}}
    </tab>
    <tab title="JSON">
        {{json:SEU-Elternbefragung-SN}}
    </tab>
    <tab title="XML">
        {{xml:SEU-Elternbefragung-SN}}
    </tab>
</tabs>