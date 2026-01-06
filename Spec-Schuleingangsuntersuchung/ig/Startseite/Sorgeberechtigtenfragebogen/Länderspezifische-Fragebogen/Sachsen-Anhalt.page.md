## {{page-title}}

### Sorgeberechtigtenfragebogen Schuleingangsuntersuchung Sachsen-Anhalt

[Download: CSV-Version der Tabelle](https://raw.githubusercontent.com/gematik/schuleingangsuntersuchung/main/Spec-Schuleingangsuntersuchung/questionnaireCSV/Questionnaire-SEU-Elternbefragung-ST.csv "Title")

| Link-ID | Text |  Typ | Enable When | Wertemenge | Herkunft | Nutzung |
|------------------|---------------|---------------|-------------|-------------|-------------|-------------|
| 1 | (1) Personenbezogene Daten Kind | group |  |  |  |  |
| 1.1 | (1.1) Nachname des Kindes | string |  |  |  |  |
| 1.2 | (1.2) Vorname des Kindes | string |  |  |  |  |
| 1.3 | (1.3) Geburtsdatum | date |  |  |  |  |
| 1.5a | (1.5a) Geburtsland Mutter | choice |  | Afghanistan :: Ägypten :: Åland :: Albanien :: Algerien :: Amerik.-Jungferninseln :: Amerikanisch-Samoa :: Andorra :: Angola :: ... | DE-BB |  |
| 1.5b | (1.5b) Geburtsland Vater | choice |  | Afghanistan :: Ägypten :: Åland :: Albanien :: Algerien :: Amerik.-Jungferninseln :: Amerikanisch-Samoa :: Andorra :: Angola :: ... | DE-BB |  |
| 1.6 | (1.6) In Deutschland geboren | boolean |  |  |  |  |
| 1.6.2 | (1.6.2) Geburtsland | choice | 1.6 = false | Afghanistan :: Ägypten :: Åland :: Albanien :: Algerien :: Amerik.-Jungferninseln :: Amerikanisch-Samoa :: Andorra :: Angola :: ... | DE-ST |  |
| 1.8 | (1.8) Geschlecht | choice |  | männlich :: weiblich :: unbekannt :: divers  |  |  |
| 1.9 | (1.9) PLZ | string |  |  |  |  |
| 1.10 | (1.10) Wohnort | string |  |  |  |  |
| 1.11b | (1.11b) Straße und Hausnummer | string |  |  | DE-ST |  |
| 1.12c | (1.12c) Kind lebt hauptsächlich bei | choice |  | Eltern :: Mutter :: Vater :: bei der Mutter mit Ehe-/ Lebenspartner :: beim Vater mit Ehe-/ Lebenspartner :: wechselnd zu etwa gleichen Teilen bei Mutter bzw. Vater :: Andere  | DE-ST |  |
| 2 | (2) Personenbezogene Daten Personensorgeberechtigter | group |  |  |  |  |
| 2.2 | (2.2) Nachname | string |  |  |  |  |
| 2.3 | (2.3) Vorname | string |  |  |  |  |
| 2.7 | (2.7) Telefonnummer | string |  |  |  |  |
| 2.9 | (2.9) Staatsangehörigkeit | choice |  | Afghanistan :: Ägypten :: Åland :: Albanien :: Algerien :: Amerik.-Jungferninseln :: Amerikanisch-Samoa :: Andorra :: Angola :: ... |  |  |
| 3 | (3) Familiendaten | group |  |  |  |  |
| 3.1e | (3.1e) Anzahl der Geschwister (ohne einzuschulendes Kind) | integer |  |  | DE-ST |  |
| 3.1f | (3.1f) Im Haushalt lebende Kinder insgesamt (inklusive des einzuschulenden Kindes) | integer |  |  | DE-ST |  |
| 3.1g | (3.1g) …davon jünger als das einzuschulende Kind | integer | 3.1f > 1 |  | DE-ST |  |
| 4 | (4) Kinderbetreuung | group |  |  |  |  |
| 4.12 | (4.12) Betreuung des Kindes | choice |  | nur zuhause (Hauskind) :: KITA halbtags (<5h), Rest des Tages zuhause :: KITA ganztags (>6h) :: Tagespflege halbtags (<5h), Rest des Tages zuhause :: Tagespflege ganztags (>6h) :: KITA und Tagespflege (jeweils etwa halbtags)  | DE-ST |  |
| 4.13 | (4.13) Alter des Kindes bei Eintritt in Kita | choice | 4.12 = kita_halbtags, 4.12 = kita_ganztags, 4.12 = kita_und_tagespflege | < 2 Jahre :: 2 Jahre :: 3 Jahre :: 4 Jahre :: 5 Jahre  | DE-ST |  |
| 5 | (5) Schwangerschaft und Geburt | group |  |  |  |  |
| 5.2 | (5.2) Geburtsgewicht (in Gramm) | integer |  |  |  |  |
| 5.6 | (5.6) Auffälligkeit/Krankheit in der Schwangerschaft | boolean |  |  |  |  |
| 5.6.1 | (5.6.1) Welche Auffälligkeit? | string | 5.6 = true |  |  |  |
| 5.9 | (5.9) Mehrlingsgeburt | boolean |  |  | DE-BY |  |
| 5.10a | (5.10a) Geburtsmodus | choice |  | Normalgeburt (Spontangeburt) :: Frühgeburt :: Frühgeburt und Kaiserschnitt :: Frühgeburt und weitere Geburtskomplikationen :: Kaiserschnitt :: weitere Geburtskomplikationen (z.B. Saugglocke, Zangengeburt)  | DE-ST |  |
| 7 | (7) Entwicklung | group |  |  |  |  |
| 7.3b | (7.3b) Allein laufen gelernt | choice |  | bis zum 15. Monat :: später als 15. Monat  | DE-ST |  |
| 7.5b | (7.5b) Sprechen gelernt (mind. 2-Wort-Sätze, ca. 50 Wörter) | choice |  | bis zum 2. Geburtstag :: später als 2. Geburtstag  | DE-ST |  |
| 7.6b | (7.6b) Tags und nachts sauber | choice |  | bis zum 4. Geburtstag :: später als 4. Geburtstag  | DE-ST |  |
| 8 | (8) Erkrankungen und gesundheitliche Einschränkungen | group |  |  |  |  |
| 8.15 | (8.15) Krankenhausaufenthalt | boolean |  |  |  |  |
| 8.15.2 | (8.15.2) Wie oft wurde das Kind im Krankenhaus aufgenommen? | integer | 8.15 = true |  | DE-ST |  |
| 8.15.3a | (8.15.3a) Grund des/der Krankenhausaufenthalt/e? | choice | 8.15 = true | akute Erkrankung :: chronische Krankheit :: Unfall :: stationäre Operation(en) :: sonstiges  |  |  |
| 8.16a | (8.16a) Besitzt Ihr Kind Allergien? | choice |  | Atopische/Allergische Erkrankungen :: Nahrungsmittelallergien :: Pollenallergien :: Hausstaubmilbenallergien :: Schimmelpilzallergien :: Tierhaarallergien :: Medikamentenallergien :: Sonstige atopische/allergische Erkrankungen  |  |  |
| 8.16a.1 | (8.16a.1) Welche sonstigen Allergien? | string | 8.16a = sonstiges |  |  |  |
| 8.16c | (8.16c) Ärztlich festgestellte Krankheiten | choice |  | Asthma :: chronische Bronchitis :: Neurodermitis  | DE-ST |  |
| 8.16d | (8.16d) Frühere Erkrankungen | choice |  | Windpocken :: Hörstörung :: Krampfanfälle (Fieberkrampf, Epilepsie) :: wiederholte Mittelohrentzündung(en)/ -vereiterung(en) :: Nieren- /Blasenerkrankung(en) :: Herz-Kreislauf-Erkrankung(en) :: häufige Atemwegserkrankungen (ARE) :: Pseudokrupp :: Spreiz(hosen)behandlung :: ... | DE-ST |  |
| 8.16d.1 | (8.16d.1) Welche sonstige früheren Erkrankungen? | string | 8.16d = sonstige_welche |  | DE-ST |  |
| 8.16e | (8.16e) Derzeitige Erkrankungen | choice |  | Sehstörung (z.B. Brilenträger, Schielen) :: gehäuftes Atmen mit offenen Mund :: Auffälligkeit(en) im Verhalten :: Diabetes (Zuckerkrankheit) :: Herz-Kreislauf-Erkrankung(en) :: Nieren- /Blasenerkrankung(en) :: sonstige Erkrankung(en)  | DE-ST |  |
| 8.16e.1 | (8.16e.1) Welche sonstigen derzeitigen Erkrankungen? | string | 8.16e = sonstige_welche |  | DE-ST |  |
| 8.23 | (8.23) Regelmäßige Medikamenteneinnahme | boolean |  |  |  |  |
| 8.23.1 | (8.23.1) Welches Medikament | string | 8.23 = true |  |  |  |
| 8.26b | (8.26b) Sonstige gesundheitliche Probleme, die hinsichtlich der Einschulung besprochen werden sollen | text |  |  | DE-ST |  |
| 8.27a | (8.27a) Ambulante Operation(en) | boolean |  |  | DE-ST |  |
| 8.29 | (8.29) Hat Ihr Kind häufiger Befindlichkeitsstörungen? | choice |  | Kopfschmerzen :: Bauchschmerzen :: Muskel-, Gelenk- oder Rückenschmerzen :: Schlafstörungen :: Sonstige Beschwerden  |  |  |
| 9 | (9) Förderungen | group |  |  |  |  |
| 9.1a | (9.1a) Werden oder wurden bei Ihrem Kind jemals Förder- oder Heilmaßnahmen durchgeführt? (Mehrfachnennung möglich)? | boolean |  |  | DE-SL |  |
| 9.1a.g | (9.1a.g) Therapien | group | 9.1a = true |  | DE-SN |  |
| 9.2 | (9.2) Sprachtherapie | choice |  | nein :: abgeschlossen :: läuft z.Zt. Noch :: geplant  |  |  |
| 9.3b | (9.3b) Ambulante Frühförderung | choice |  | nein :: abgeschlossen :: läuft z.Zt. Noch :: geplant  | DE-ST |  |
| 9.4 | (9.4) Ergotherapie | choice |  | nein :: abgeschlossen :: läuft z.Zt. Noch :: geplant  |  |  |
| 9.6 | (9.6) Physiotherapie | choice |  | nein :: abgeschlossen :: läuft z.Zt. Noch :: geplant  |  |  |
| 9.9 | (9.9) Integrative Betreuung | choice |  | nein :: abgeschlossen :: läuft z.Zt. Noch :: geplant  |  |  |
| 9.10 | (9.10) Sonstige Förderung | string |  |  |  |  |
| 13 | (13) Informationen Eltern | group |  |  |  |  |
| 13.1b | (13.1b) Schulabschluss 1. Elternteil | choice |  | Weniger als 10. Klasse :: 10. Klasse :: Abitur / FH-Reife  | DE-BW |  |
| 13.2b | (13.2b) Schulabschluss 2. Elternteil | choice |  | Weniger als 10. Klasse :: 10. Klasse :: Abitur / FH-Reife  | DE-BW |  |
| 13.32a | (13.32a) Erwerbstätigkeit Mutter/ Partner | choice |  | Ja :: Nein :: zur Zeit Ausbildung/ Studium  | DE-ST |  |
| 13.33a | (13.33a) Erwerbstätigkeit Vater/ Partner | choice |  | Ja :: Nein :: zur Zeit Ausbildung/ Studium  | DE-ST |  |
| 13.38 | (13.38) Rauchen im Haushalt | boolean |  |  | DE-ST |  |
| 13.39 | (13.39) Ort des Rauchens | choice | 13.38 = true | nur außerhalb der Wohnung :: innerhalb und außerhalb der Wohnung  | DE-ST |  |

<tabs>
    <tab title="Table">      
        {{table:SEU-Elternbefragung-ST}}
    </tab>
    <tab title="JSON">
        {{json:SEU-Elternbefragung-ST}}
    </tab>
    <tab title="XML">
        {{xml:SEU-Elternbefragung-ST}}
    </tab>
</tabs>