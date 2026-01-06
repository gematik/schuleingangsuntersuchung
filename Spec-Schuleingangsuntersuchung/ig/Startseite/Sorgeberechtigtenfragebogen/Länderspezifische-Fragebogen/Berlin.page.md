## {{page-title}}

### Sorgeberechtigtenfragebogen Schuleingangsuntersuchung Berlin

[Download: CSV-Version der Tabelle](https://raw.githubusercontent.com/gematik/schuleingangsuntersuchung/main/Spec-Schuleingangsuntersuchung/questionnaireCSV/Questionnaire-SEU-Elternbefragung-BE.csv "Title")

| Link-ID | Text |  Typ | Enable When | Wertemenge | Herkunft | Nutzung |
|------------------|---------------|---------------|-------------|-------------|-------------|-------------|
| 1 | (1) Angaben zur Person | group |  |  |  |  |
| 1.1 | (1.1) Nachname des Kindes | string |  |  |  |  |
| 1.2 | (1.2) Vorname des Kindes | string |  |  |  |  |
| 1.9 | (1.9) PLZ | string |  |  |  |  |
| 1.10 | (1.10) Wohnort | string |  |  |  |  |
| 1.11 | (1.11) Straße | string |  |  |  |  |
| 1.11a | (1.11a) Hausnummer | string |  |  |  |  |
| 2.7 | (2.7) Telefonnummer | string |  |  |  |  |
| 1.8 | (1.8) Geschlecht | choice |  | männlich :: weiblich :: unbekannt :: divers  |  |  |
| 1.3 | (1.3) Geburtsdatum | date |  |  |  |  |
| 1.6 | (1.6) In Deutschland geboren | boolean |  |  |  |  |
| 1.6.3 | (1.6.3) Seit wann lebt Ihr Kind in Deutschland (Monat/Jahr)? | date |  |  | DE-BE |  |
| 1.1.1 | (1.1.1) Geschwister unter 18 Jahren | group |  |  |  |  |
| 3.1.1.3 | (3.1.1.3) Vorname des Geschwisters | string |  |  | DE-BE |  |
| 3.1.1.1 | (3.1.1.1) Geburtsdatum des Geschwisters | date |  |  |  |  |
| 2 | (2) Personenbezogene Daten Personensorgeberechtigter | group |  |  |  |  |
| 2.2 | (2.2) Nachname | string |  |  |  |  |
| 2.3 | (2.3) Vorname | string |  |  |  |  |
| 2.10a | (2.10a) Herkunftsland Deutsch? | boolean |  |  | DE-RP |  |
| 1.4d | (1.4d) Staatsangehörigkeit: andere/weitere? | choice |  | Afghanistan :: Ägypten :: Åland :: Albanien :: Algerien :: Amerik.-Jungferninseln :: Amerikanisch-Samoa :: Andorra :: Angola :: ... | DE-BE |  |
| 6.1 | (6.1) Welche Sprachen werden Zuhause gesprochen? | choice |  | keine Angabe :: Andere :: Afar :: Abchasisch :: Achinesisch :: Acholi :: Dangme :: Adygeisch :: Afrikaans :: ... |  |  |
| 11.2 | (11.2) Name Kinderarzt | string |  |  |  |  |
| 3 | (3) 2. Erkrankungen des Kindes | group |  |  |  |  |
| 8.83 | (8.83) Erkrankungen des Kindes (auch frühere) | choice |  | Epilepsie :: Herzfehler :: Asthma  | DE-BE |  |
| 8.25.2 | (8.25.2) andere wichtige Erkrankungen/Allergien/Unfälle | boolean |  |  | DE-BE |  |
| 8.25.3 | (8.25.3) wenn ja, welche | text | 8.25.2 = true |  | DE-BE |  |
| 8.23 | (8.23) Regelmäßige Medikamenteneinnahme | boolean |  |  |  |  |
| 8.23.1 | (8.23.1) Welches Medikament | string | 8.23 = true |  |  |  |
| 8.15 | (8.15) Krankenhausaufenthalt | boolean |  |  |  |  |
| 8.15.1.a | (8.15.1.a) Anzahl der Krankenhausaufenthalte/Operationen | integer |  |  | DE-BE |  |
| 4 | (4) 2. Erkrankungen des Kindes | group |  |  |  |  |
| 9.6a | (9.6a) Physiotherapie / Krankengymnastik | boolean |  |  | DE-BB |  |
| 9.4a | (9.4a) Ergotherapie | boolean |  |  | DE-BB |  |
| 9.2ba | (9.2ba) Logopädie | boolean |  |  | DE-BB |  |
| 9.7a | (9.7a) Psychologische Erziehungsberatung | boolean |  |  | DE-BB |  |
| 7.14 | (7.14) Machen Sie sich Sorgen um Ihr Kind wegen | choice |  | seines Verhaltens? :: seiner Sprachentwicklung :: seine Konzentrationsfähigkeit :: seines Seh- oder Hörvermögens  | DE-BE |  |
| 8.30.1 | (8.30.1) Nässt ihr Kind ein? | boolean |  |  | DE-BE |  |
| 5 | (5) Betreuung des Kindes | group |  |  |  |  |
| 4.9 | (4.9) Seit wann besucht das Kind eine Kita? | date |  |  | DE-SN |  |
| 4.6b | (4.6b) Name des Kindergartens | string |  |  |  |  |
| 4.4 | (4.4) Angabe des Datums, seit wann das Kind keine Kita mehr besucht. | date |  |  |  |  |
| 4.5 | (4.5) Besucht ihr Kind eine andere Form der Tagesbetreuung? | boolean |  |  |  |  |
| 6 | (6) Lebensumfeld | group |  |  |  |  |
| 1.12d | (1.12d) Kind lebt überwiegend bei | choice |  | Leibliche Eltern :: Mutter alleinerziehend :: Vater alleinerziehend :: Pflegeeltern :: Andere Familienmitglieder/Verwandte :: in einer Einrichtung  | DE-BE |  |
| 13.1c | (13.1c) Schulabschluss Elternteil A | choice |  | Kein Hauptschulabschluss :: Hauptschluss oder weniger 10. Klasse :: mittlere Reife/mittlere Berufsabschluss (MSA/10. Klasse) :: Abitur/Fachabitur  | DE-BE |  |
| 13.2c | (13.2c) Schulabschluss Elternteil B | choice |  | Kein Hauptschulabschluss :: Hauptschluss oder weniger 10. Klasse :: mittlere Reife/mittlere Berufsabschluss (MSA/10. Klasse) :: Abitur/Fachabitur  | DE-BE |  |
| 13.3 | (13.3) Berufsabschluss 1. Elternteil | choice |  | Kein Berufsabschluss :: Derzeit noch in beruflicher Ausbildung :: Berufliche Ausbildung/Lehre oder vergleichbar :: Fach-/Hochschulabschluss oder vergleichbar  |  |  |
| 13.4 | (13.4) Berufsabschluss 2. Elternteil | choice |  | Kein Berufsabschluss :: Derzeit noch in beruflicher Ausbildung :: Berufliche Ausbildung/Lehre oder vergleichbar :: Fach-/Hochschulabschluss oder vergleichbar  |  |  |
| 13.32c | (13.32c) Berufstätigkeit Mutter | choice |  | nicht erwerbstätig, weil finde keine Arbeit :: nicht erwerbstätig, weil alle anderen Gründe :: teilzeitbeschäftigt :: vollzeitbeschäftigt  | DE-BE |  |
| 13.33c | (13.33c) Berufstätigkeit Vater | choice |  | nicht erwerbstätig, weil finde keine Arbeit :: nicht erwerbstätig, weil alle anderen Gründe :: teilzeitbeschäftigt :: vollzeitbeschäftigt  | DE-BE |  |
| 3.3 | (3.3) Aktuell im Haushalt lebende Erwachsene | integer |  |  | DE-BB |  |
| 3.1c | (3.1c) Kinder im Haushalt | integer |  |  | DE-HH |  |
| 12.4.1 | (12.4.1) Wieviele Personen sind Raucher/Dampfer | integer |  |  | DE-BE |  |
| 10.4c | (10.4c) Wieviele Stunden am Tag beschäftigt sich Ihr Kind im Durchschnitt mit elektronischen Geräten? (elektronische Geräte sind Fernsehen, DVD, Computer, Tablet, Smartphone, Playstation und andere)  | choice |  | Gar nicht :: max. 1/2 Stunde :: max. 1 Stunde :: max. 2 Stunden :: max. 3 Stunden :: über 3 Stunden  | DE-BE |  |
| 10.2.1 | (10.2.1) Mein Kind hat einen eigenen Fernseher? | boolean |  |  | DE-BE |  |
| 10.2.2 | (10.2.2) andere eigene elektronische Geräte | boolean |  |  | DE-BE |  |
| 10.2.3 | (10.2.3) wenn ja, welche | text | 10.2.2 = true |  | DE-BE |  |

<tabs>
    <tab title="Table">      
        {{table:SEU-Elternbefragung-BE}}
    </tab>
    <tab title="JSON">
        {{json:SEU-Elternbefragung-BE}}
    </tab>
    <tab title="XML">
        {{xml:SEU-Elternbefragung-BE}}
    </tab>
</tabs>