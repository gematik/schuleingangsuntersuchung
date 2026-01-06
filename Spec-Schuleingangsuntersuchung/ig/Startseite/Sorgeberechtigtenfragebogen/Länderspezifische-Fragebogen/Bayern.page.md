## {{page-title}}

### Sorgeberechtigtenfragebogen Schuleingangsuntersuchung Bayern

[Download: CSV-Version der Tabelle](https://raw.githubusercontent.com/gematik/schuleingangsuntersuchung/main/Spec-Schuleingangsuntersuchung/questionnaireCSV/Questionnaire-SEU-Elternbefragung-BY.csv "Title")

| Link-ID | Text |  Typ | Enable When | Wertemenge | Herkunft | Nutzung |
|------------------|---------------|---------------|-------------|-------------|-------------|-------------|
| 1 | (1) Personenbezogene Daten Kind | group |  |  |  |  |
| 1.1 | (1.1) Nachname des Kindes | string |  |  |  |  |
| 1.2 | (1.2) Vorname des Kindes | string |  |  |  |  |
| 1.3 | (1.3) Geburtsdatum | date |  |  |  |  |
| 1.4 | (1.4) Staatsangehörigkeit | choice |  | Afghanistan :: Ägypten :: Åland :: Albanien :: Algerien :: Amerik.-Jungferninseln :: Amerikanisch-Samoa :: Andorra :: Angola :: ... |  |  |
| 1.5 | (1.5) Geburtsland | choice |  | Afghanistan :: Ägypten :: Åland :: Albanien :: Algerien :: Amerik.-Jungferninseln :: Amerikanisch-Samoa :: Andorra :: Angola :: ... |  |  |
| 1.5c | (1.5c) Elternsprache  1 | choice |  | Afar :: Abchasisch :: Achinesisch :: Acholi :: Dangme :: Adygeisch :: Afrikaans :: Ainu :: Akan :: ... | DE-BY |  |
| 1.5c.1 | (1.5c.1) Elternsprache 1 andere | string | 1.5c = 98 |  | DE-BY |  |
| 1.5d | (1.5d) Elternsprache  2 | choice |  | Afar :: Abchasisch :: Achinesisch :: Acholi :: Dangme :: Adygeisch :: Afrikaans :: Ainu :: Akan :: ... | DE-BY |  |
| 1.5d.1 | (1.5d.1) Elternsprache 2 andere | string | 1.5d = 98 |  | DE-BY |  |
| 2 | (2) Personenbezogene Daten Personensorgeberechtigter | group |  |  |  |  |
| 2.2 | (2.2) Nachname | string |  |  |  |  |
| 2.3 | (2.3) Vorname | string |  |  |  |  |
| 2.4 | (2.4) PLZ | string |  |  |  |  |
| 2.5 | (2.5) Wohnort | string |  |  |  |  |
| 2.6 | (2.6) Straße | string |  |  |  |  |
| 2.7 | (2.7) Telefonnummer | string |  |  |  |  |
| 3 | (3) Familiendaten | group |  |  |  |  |
| 3.2a | (3.2a) Gibt es in der Familie (Eltern, Geschwister) | group |  |  | DE-BY |  |
| 3.2a.2 | (3.2a.2) ► eine Lese-Rechtschreib-Schwäche (Legasthenie) | boolean |  |  | DE-BY |  |
| 3.2a.3 | (3.2a.3) ► eine Rechenschwäche (Dyskalkulie) | boolean |  |  | DE-BY |  |
| 4 | (4) Kinderbetreuung | group |  |  |  |  |
| 4.0b.b | (4.0b.b) Besucht Ihr Kind derzeit einen Kindergarten? | boolean |  |  | DE-BY |  |
| 4.1z | (4.1z) Dauer Krippen-/ KITA-/ Kindergartenbesuch (in Jahren) | choice |  | 0 Jahre :: 1 Jahr :: 2 Jahre :: 3 Jahre :: 4 Jahre :: 5 und mehr Jahre :: keine Angaben  | DE-BY |  |
| 4.5b | (4.5b) Art des Kindergartens | choice |  | Regel KiGa :: SVE :: HPT :: keine Angaben  | DE-BY |  |
| 5 | (5) Schwangerschaft und Geburt | group |  |  |  |  |
| 5.1 | (5.1) Dauer der Schwangerschaft (in Wochen) | integer |  |  |  |  |
| 5.2 | (5.2) Geburtsgewicht (in Gramm) | integer |  |  |  |  |
| 5.9 | (5.9) Mehrlingsgeburt | boolean |  |  | DE-BY |  |
| 6 | (6) Sprache | group |  |  |  |  |
| 6.1d | (6.1d) Kind wächst mehrsprachig auf | boolean |  |  | DE-BY |  |
| 6.1e | (6.1e) Zu Hause gesprochene Sprache(n) | choice |  | Deutsch :: Deutsch UND andere :: Andere :: keine Angaben  | DE-BY |  |
| 6.1f | (6.1f) Zu Hause gesprochene Sprache(n) andere | string | 6.1e = 2, 6.1e = 8 |  | DE-BY |  |
| 6.5 | (6.5) Kontakt zu Deutschsprechenden seit Geburt? | boolean |  |  |  |  |
| 6.5a | (6.5a) Kontakt mit der deutschen Sprache | choice |  | seit Geburt :: NICHT seit Geburt :: keine Angabe  | DE-BY |  |
| 6.5a.g | (6.5a.g) Kontakt mit der deutschen Sprache | group | 6.5a = 2 |  | DE-BY |  |
| 6.5a.g.1 | (6.5a.g.1) Kontakt mit der deutschen Sprache ab welchem Alter (in Jahren) | integer |  |  | DE-BY |  |
| 6.5a.g.2 | (6.5a.g.2) Kontakt mit der deutschen Sprache ab welchem Alter (in Monaten) | integer |  |  | DE-BY |  |
| 7 | (7) Entwicklung | group |  |  |  |  |
| 7.9a | (7.9a) Händigkeit | choice |  | Rechtshänder :: Linkshänder :: noch unentschieden :: keine Angabe  | DE-BY |  |
| 7.11b | (7.11b) Würden Sie sagen, dass Ihr Kind insgesamt gesehen in einem oder mehreren der folgenden Bereiche Schwierigkeiten hat: Stimmung (bedrückt, ängstlich, schwankend, aufbrausend), Konzentration (kann nicht lange stillsitzen, hört beim Vorlesen nicht ausdauernd zu), Verhalten, Umgang mit Anderen? | boolean |  |  | DE-BY |  |
| 8 | (8) Erkrankungen und gesundheitliche Einschränkungen | group |  |  |  |  |
| 8.7a | (8.7a) Augenarztbesuch | boolean |  |  | DE-BY |  |
| 8.7b | (8.7b) Feststellung / Veranlassung Augenarzt | choice | 8.7a = true | unauffälliger Befund :: Kurzsichtigkeit (Myopie) :: Weitsichtigkeit (Hyperopie) :: Schielen :: Verordnung Brille :: Verordnung Brille bei Myopie :: Verodnung Brille bei Hyperopie :: Verordnung Brille bei Schielen :: keine Angaben  | DE-BY |  |
| 8.7c | (8.7c) Besuch beim Zahnarzt in letzten 12 Monaten | choice |  | ja :: nein :: keine Angaben  | DE-BY |  |
| 8.9a | (8.9a) Angeborene schwere Hörstörung | choice |  | ja :: nein :: keine Angaben  | DE-BY |  |
| 8.9a.g | (8.9a.g) Zusatzangaben zur Hörstörung | group | 8.9a = 1 |  | DE-BY |  |
| 8.9a.g.1 | (8.9a.g.1) Angeborene Hörstörung | choice |  |  | DE-BY |  |
| 8.9a.g.2 | (8.9a.g.2) mit Hörgerät versorgt | choice |  |  | DE-BY |  |
| 8.9a.g.3 | (8.9a.g.3) mit Cochlea-Implant versorgt | choice |  |  | DE-BY |  |
| 8.9a.g.4 | (8.9a.g.4) Elterneinwilligung mitgegeben (Hören) | boolean |  |  | DE-BY |  |
| 8.10ga | (8.10ga) Stoffwechselerkrankung oder Hormonstörung (nur ärztl. diag. Befunde angeben) | boolean |  |  | DE-BY |  |
| 8.10ga_g | (8.10ga_g) Zusatzangaben zu Stoffwechselstörungen | group | 8.10ga = true |  | DE-BY |  |
| 8.10ga_g.1 | (8.10ga_g.1) MCAD-Mangel (nur ärztlich diag. Befunde angeben) | boolean |  |  | DE-BY |  |
| 8.10ga_g.2 | (8.10ga_g.2) Hypothyreose (nur ärztlich diag. Befunde angeben) | boolean |  |  | DE-BY |  |
| 8.10ga_g.3 | (8.10ga_g.3) Phenylketonurie (nur ärztlich diag. Befunde angeben) | boolean |  |  | DE-BY |  |
| 8.10ga_g.4 | (8.10ga_g.4) AGS (nur ärztlich diag. Befunde angeben) | boolean |  |  | DE-BY |  |
| 8.10ga_g.5 | (8.10ga_g.5) Mukoviszidose (nur ärztlich diag. Befunde angeben) | boolean |  |  | DE-BY |  |
| 8.10ga_g.6 | (8.10ga_g.6) Diabetes mellitus (Typ 1) (nur ärztlich diag. Befunde angeben) | boolean |  |  | DE-BY |  |
| 8.10ga_g.7 | (8.10ga_g.7) Diabetes mellitus (Typ 2) (nur ärztlich diag. Befunde angeben) | boolean |  |  | DE-BY |  |
| 8.10ga_g.8 | (8.10ga_g.8) sonstige Stoffwechselerkrankungen (nur ärztlich diag. Befunde) | boolean |  |  | DE-BY |  |
| 8.10ga_g.9 | (8.10ga_g.9) wenn ja, welche (nur ärztlich diag. Befunde) | string | 8.10ga_g.8 = true |  | DE-BY |  |
| 8.10ga_g.10 | (8.10ga_g.10) Alter bei Diagnosestellung (in Jahren) | integer | 8.10ga_g.1 = true, 8.10ga_g.2 = true, 8.10ga_g.3 = true, 8.10ga_g.4 = true, 8.10ga_g.5 = true, 8.10ga_g.6 = true, 8.10ga_g.7 = true, 8.10ga_g.8 = true |  | DE-BY |  |
| 8.10ga_g.10H | Wurde mehr als 1 Erkrankung mit JA markiert, bitte das Alter bei Diagnosestellung der in der Reihenfolge zuerst aufgeführten Stoffwechselerkrankung angeben. | display |  |  |  |  |
| 8.10ga_g.11 | (8.10ga_g.11) Alter bei Diagnosestellung (in Monaten) | integer | 8.10ga_g.1 = true, 8.10ga_g.2 = true, 8.10ga_g.3 = true, 8.10ga_g.4 = true, 8.10ga_g.5 = true, 8.10ga_g.6 = true, 8.10ga_g.7 = true, 8.10ga_g.8 = true |  | DE-BY |  |
| 8.10ga_g.11H | Wurde mehr als 1 Erkrankung mit JA markiert, bitte das Alter bei Diagnosestellung der in der Reihenfolge zuerst aufgeführten Stoffwechselerkrankung angeben. | display |  |  |  |  |
| 8.14 | (8.14) Chronische Erkrankung vorhanden | boolean |  |  |  |  |
| 8.14.1 | (8.14.1) Welche Erkrankung? | string | 8.14 = true |  |  |  |
| 8.21 | (8.21) Schwere Behinderung vorhanden? | boolean |  |  |  |  |
| 8.21.g | (8.21.g) Details Behinderung | group | 8.21 = true |  |  |  |
| 8.21.g.1 | (8.21.g.1) Welche Behinderung | text |  |  |  |  |
| 8.23 | (8.23) Regelmäßige Medikamenteneinnahme | boolean |  |  |  |  |
| 8.23.1 | (8.23.1) Welches Medikament | string | 8.23 = true |  |  |  |
| 8.25 | (8.25) Eine Erkrankung, die in einer Notfallsituation beachtet werden muss | boolean |  |  |  |  |
| 8.25.1 | (8.25.1) Welche Erkrankung | text | 8.25 = true |  |  |  |
| 9 | (9) Förderungen | group |  |  |  |  |
| 9.1b | (9.1b) Teilnahme am Vorkurs Deutsch | choice |  | ja :: nein :: geplant :: keine Angaben  | DE-BY |  |
| 9.1c | (9.1c) Sprachtherapie (Logopädie) | choice |  | nein :: abgeschlossen :: läuft z.Zt. Noch :: geplant  | DE-BY |  |
| 13 | (13) Informationen Eltern | group |  |  |  |  |
| 13.8b | (13.8b) Anzahl Erwachsene im Haushalt | choice |  | keine :: eins :: zwei :: drei :: vier und mehr :: keine Angaben  | DE-BY |  |
| 13.21 | (13.21) Geburtsland Elternteil 1 | choice |  | Deutschland :: Anderes Land :: keine Angaben  | DE-BY |  |
| 13.22 | (13.22) Geburtsland Elternteil 2 | choice |  | Deutschland :: Anderes Land :: keine Angaben  | DE-BY |  |
| 13.23 | (13.23) Staatsangehörigkeit Elternteil 1 | choice |  | Deutsch :: Deutsch UND andere :: Andere :: keine Angaben  | DE-BY |  |
| 13.24 | (13.24) Staatsangehörigkeit Elternteil 2 | choice |  | Deutsch :: Deutsch UND andere :: Andere :: keine Angaben  | DE-BY |  |
| 13.25 | (13.25) Höchster Schulabschluss Elternteil 1 | choice |  | (noch) kein Schulabschluss :: Haupt-/Volks-/Mittelschulabschluss/Quali :: Realschulabschluss (Mittlere Reife) :: allgemeine/fachgebundene Hochschulreife :: Hochschul-/Universitätsabschluss :: keine Angaben  | DE-BY |  |
| 13.27 | (13.27) Höchster Schulabschluss Elternteil 2 | choice |  | (noch) kein Schulabschluss :: Haupt-/Volks-/Mittelschulabschluss/Quali :: Realschulabschluss (Mittlere Reife) :: allgemeine/fachgebundene Hochschulreife :: Hochschul-/Universitätsabschluss :: keine Angaben  | DE-BY |  |
| 13.28 | (13.28) Erwerbstätigkeit Elternteil 1 | choice |  | vollzeit, mind. 35 Stunden :: teilzeit, 15-34 Stunden :: stundenweise, weniger als 15 Stunden :: vorübergehende Freistellung :: Ausbildung, Lehre, Umschulung :: nicht erwerbstätig, nicht arbeitssuchend :: nicht erwerbstätig, arbeitssuchend :: keine Angaben  | DE-BY |  |
| 13.29 | (13.29) Erwerbstätigkeit Elternteil 2 | choice |  | vollzeit, mind. 35 Stunden :: teilzeit, 15-34 Stunden :: stundenweise, weniger als 15 Stunden :: vorübergehende Freistellung :: Ausbildung, Lehre, Umschulung :: nicht erwerbstätig, nicht arbeitssuchend :: nicht erwerbstätig, arbeitssuchend :: keine Angaben  | DE-BY |  |

<tabs>
    <tab title="Table">      
        {{table:SEU-Elternbefragung-BY}}
    </tab>
    <tab title="JSON">
        {{json:SEU-Elternbefragung-BY}}
    </tab>
    <tab title="XML">
        {{xml:SEU-Elternbefragung-BY}}
    </tab>
</tabs>