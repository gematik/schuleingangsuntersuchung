## {{page-title}}

### Sorgeberechtigtenfragebogen Schuleingangsuntersuchung Hessen

[Download: CSV-Version der Tabelle](https://raw.githubusercontent.com/gematik/schuleingangsuntersuchung/main/Spec-Schuleingangsuntersuchung/questionnaireCSV/Questionnaire-SEU-Elternbefragung-HE.csv "Title")

| Link-ID | Text |  Typ | Enable When | Wertemenge | Herkunft | Nutzung |
|------------------|---------------|---------------|-------------|-------------|-------------|-------------|
| 0 | (0) Schule & Vorgangsnummer | group |  |  |  |  |
| 0.1 | (0.1) Name der Schule | string |  |  |  |  |
| 0.2 | (0.2) Vorgangsnummer | string |  |  |  |  |
| 1 | (1) Personenbezogene Daten Kind | group |  |  |  |  |
| 1.1 | (1.1) Nachname des Kindes | string |  |  |  |  |
| 1.2 | (1.2) Vorname des Kindes | string |  |  |  |  |
| 1.3 | (1.3) Geburtsdatum | date |  |  |  |  |
| 1.4 | (1.4) Staatsangehörigkeit | choice |  | Afghanistan :: Ägypten :: Åland :: Albanien :: Algerien :: Amerik.-Jungferninseln :: Amerikanisch-Samoa :: Andorra :: Angola :: ... |  |  |
| 1.5 | (1.5) Geburtsland | choice |  | Afghanistan :: Ägypten :: Åland :: Albanien :: Algerien :: Amerik.-Jungferninseln :: Amerikanisch-Samoa :: Andorra :: Angola :: ... |  |  |
| 1.6 | (1.6) In Deutschland geboren | boolean |  |  |  |  |
| 1.6.1 | (1.6.1) Seit wann wohnt das Kind in Deutschland? | date | 1.6 = false |  |  |  |
| 1.8 | (1.8) Geschlecht | choice |  | männlich :: weiblich :: unbekannt :: divers  |  |  |
| 1.9 | (1.9) PLZ | string |  |  |  |  |
| 1.10 | (1.10) Wohnort | string |  |  |  |  |
| 1.11 | (1.11) Straße | string |  |  |  |  |
| 1.11a | (1.11a) Hausnummer | string |  |  |  |  |
| 2 | (2) Personenbezogene Daten Personensorgeberechtigter | group |  |  |  |  |
| 2.1 | (2.1) Geschlecht | choice |  | männlich :: weiblich :: unbekannt :: divers  |  |  |
| 2.2 | (2.2) Nachname | string |  |  |  |  |
| 2.3 | (2.3) Vorname | string |  |  |  |  |
| 2.4 | (2.4) PLZ | string |  |  |  |  |
| 2.5 | (2.5) Wohnort | string |  |  |  |  |
| 2.6 | (2.6) Straße | string |  |  |  |  |
| 2.7 | (2.7) Telefonnummer | string |  |  |  |  |
| 2.8 | (2.8) Email | string |  |  |  |  |
| 2.9 | (2.9) Staatsangehörigkeit | choice |  | Afghanistan :: Ägypten :: Åland :: Albanien :: Algerien :: Amerik.-Jungferninseln :: Amerikanisch-Samoa :: Andorra :: Angola :: ... |  |  |
| 2.10 | (2.10) Herkunftsland | choice |  | Afghanistan :: Ägypten :: Åland :: Albanien :: Algerien :: Amerik.-Jungferninseln :: Amerikanisch-Samoa :: Andorra :: Angola :: ... |  |  |
| 2.12 | (2.12) Geburtsdatum | date |  |  |  |  |
| 3 | (3) Familiendaten | group |  |  |  |  |
| 3.1 | (3.1) Anzahl der Geschwister | integer |  |  |  |  |
| 3.1.1 | (3.1.1) Details Geschwister | group | 3.1 > 0 |  |  |  |
| 3.1.1.1 | (3.1.1.1) Geburtsdatum des Geschwisters | date |  |  |  |  |
| 3.2 | (3.2) Familiäre Vorgeschichte | group |  |  |  |  |
| 3.2.5 | (3.2.5) Chronische Erkrankung | choice |  | Asthma bronchiale :: Rheuma :: Diabetes :: Epilepsie :: Neurodermitis :: Aufmerksamkeitsdefizit-/Hyperaktivitätsstörung (ADHS) :: Sonstige chronische Krankheiten  |  |  |
| 3.2.5.1 | (3.2.5.1) Welche sonstige(n) chronischen Erkrankung(en)? | string | 3.2.5 = sonstiges |  |  |  |
| 4 | (4) Kinderbetreuung | group |  |  |  |  |
| 4.0b | (4.0b) Ist das Kind in einem Kindergarten/einer Kindertageseinrichtung? | boolean |  |  |  |  |
| 4.1d | (4.1d) Dauer Besuch Kita/Krippe | choice |  | <18 Monate :: 18 Mon. - 3 J. :: >3 Jahre  | DE-HE |  |
| 4.6b | (4.6b) Name des Kindergartens | string | 4.0b = true |  |  |  |
| 5 | (5) Schwangerschaft und Geburt | group |  |  |  |  |
| 5.2 | (5.2) Geburtsgewicht (in Gramm) | integer |  |  |  |  |
| 5.6 | (5.6) Auffälligkeit/Krankheit in der Schwangerschaft | boolean |  |  |  |  |
| 7 | (7) Entwicklung | group |  |  |  |  |
| 7.11a | (7.11a) Auffälligkeit des Verhaltens | boolean |  |  | DE-HE |  |
| 8 | (8) Erkrankungen und gesundheitliche Einschränkungen | group |  |  |  |  |
| 8.3 | (8.3) Sehstörung vorhanden? | boolean |  |  |  |  |
| 8.4 | (8.4) Sprachstörung vorhanden? | boolean |  |  |  |  |
| 8.5 | (8.5) Schielbehandlung? | boolean |  |  |  |  |
| 8.6 | (8.6) Brillenträger? | boolean |  |  |  |  |
| 8.9 | (8.9) Schwere Hörstörung vorhanden? | boolean |  |  |  |  |
| 8.12.g | (8.12.g) Infektionskrankheiten | group |  |  |  |  |
| 8.12.g.1 | (8.12.g.1) Infektionskrankheit | open-choice |  | COVID-19 :: Hand-Fuß-Mund-Krankheit :: Borreliose :: Hepatitis B :: Hirnhautentzündung :: Keuchhusten :: Masern :: Mumps :: Ringelröten :: ... |  |  |
| 8.15 | (8.15) Krankenhausaufenthalt | boolean |  |  |  |  |
| 8.15.1 | (8.15.1) Detaillierte Angaben zum Krankenhausaufenthalt? | string | 8.15 = true |  |  |  |
| 8.16a | (8.16a) Besitzt Ihr Kind Allergien? | choice |  | Atopische/Allergische Erkrankungen :: Nahrungsmittelallergien :: Pollenallergien :: Hausstaubmilbenallergien :: Schimmelpilzallergien :: Tierhaarallergien :: Medikamentenallergien :: Sonstige atopische/allergische Erkrankungen  |  |  |
| 8.16a.1 | (8.16a.1) Welche sonstigen Allergien? | string | 8.16a = sonstiges |  |  |  |
| 8.23 | (8.23) Regelmäßige Medikamenteneinnahme | boolean |  |  |  |  |
| 8.23.1 | (8.23.1) Welches Medikament | string | 8.23 = true |  |  |  |
| 9 | (9) Förderungen | group |  |  |  |  |
| 9.2 | (9.2) Sprachtherapie | choice |  | nein :: abgeschlossen :: läuft z.Zt. Noch :: geplant  |  |  |
| 9.3 | (9.3) Frühförderung | choice |  | nein :: abgeschlossen :: läuft z.Zt. Noch :: geplant  |  |  |
| 9.4 | (9.4) Ergotherapie | choice |  | nein :: abgeschlossen :: läuft z.Zt. Noch :: geplant  |  |  |
| 9.6 | (9.6) Physiotherapie | choice |  | nein :: abgeschlossen :: läuft z.Zt. Noch :: geplant  |  |  |
| 9.9 | (9.9) Integrative Betreuung | choice |  | nein :: abgeschlossen :: läuft z.Zt. Noch :: geplant  |  |  |
| 9.10 | (9.10) Sonstige Förderung | string |  |  |  |  |
| 11 | (11) Arzt | group |  |  |  |  |
| 11.2 | (11.2) Name Kinderarzt | string |  |  |  |  |
| 11.3 | (11.3) Name Facharzt | string |  |  |  |  |
| 12 | (12) Sonstiges | group |  |  |  |  |
| 12.4 | (12.4) KISS Sprachscreening | boolean |  |  |  |  |
| 12.8 | (12.8) Sportart und Verein | text |  |  |  |  |
| 12.9 | (12.9) Schwimmfähig | boolean |  |  |  |  |
| 12.10 | (12.10) Seepferdchenabzeichen | boolean |  |  |  |  |

<tabs>
    <tab title="Table">      
        {{table:SEU-Elternbefragung-HE}}
    </tab>
    <tab title="JSON">
        {{json:SEU-Elternbefragung-HE}}
    </tab>
    <tab title="XML">
        {{xml:SEU-Elternbefragung-HE}}
    </tab>
</tabs>