RuleSet: 9-af-schulaerztlicheuntersuchung2
* item[+] insert addGroup(8, [[Schulärztliche Untersuchung (1. SÄU)]])
  * item[+] insert addItem(9.1, #date, [[Datum 2. Schulärztliche Untersuchung (2. SÄU)]]) //TODO Min eins aus der Gruppe soll ausgefüllt sein; Validierung >= 2022
  * item[+] insert addItem(9.2, #boolean, [[NUR telefon. Kontaktaufnahme mit Eltern]])
  * item[+] insert addGroup(9_1, [[Grund für 2. Schulärztliche Untersuchung]])
    * item[+] insert addItem(9.3, #boolean, [[Indikation nach 1. SÄU]])
    * item[+] insert addItem(9.4, #boolean, [[Auffälliges Ergebnis im 2. Screening]])
    * item[+] insert addItem(9.5, #boolean, [[Kind besucht keine vorschulische Einrichtung]])
    * item[+] insert addItem(9.6, #boolean, [[Eltern wünschen 2. schulärztliche Untersuchung]])
    * item[+] insert addItem(9.7, #boolean, [[Kind in SVE, Sonderpädagogischer oder integrativer Einrichtung]])
    * item[+] insert addItem(9.8, #boolean, [[Kinder-/Hausarzt empfiehlt SÄU]])
    * item[+] insert addItem(9.9, #boolean, [[Verdacht Kindeswohlgefährdung]])
    * item[+] insert addItem(9.10, #boolean, [[Sonstige Gründe]])
    * item[+] insert addItem(9.11, #boolean, [[Keine Angabe]])
  * item[+] insert addGroup(9_2, [[Körperliche Befunde der 2. Schulärztlichen Untersuchung]])
    * item[+] insert addItem(9.12, #integer, [[gemessene Körpergröße (in cm)]])
      * insert uunit(cm, "cm")
    * item[+] insert addItem(9.13, #decimal, [[gemessenes Körpergewicht (in kg)]])
      * insert uunit(kg, "kg")
    * item[+] insert addItem(9.14, #boolean, [[Körperliche Untersuchung nicht möglich]])
    * item[+] insert addItem(9.15, #string, [[Anmerkungen intern]])
    * item[+] insert addItem(9.16, #boolean, [[Bislang unbehandelte therapiebedürftige körperliche Befunde]])
    * item[+] insert addItem(9.17, #string, [[Körperliche Befunde]])
      * insert EnableWhenBoolean(9.16, =, true)
    * item[+] insert addItem(9.18, #choice, [[Verhaltensauffälligkeiten beim Kind]])
      * answerValueSet = Canonical(SEU-AF-AntwortenSAeUntersuchungVS)
    * item[+] insert addItem(9.19, #choice, [[Umgangs-/Erziehungsprobleme Mutter/Vater - Kind]])
      * answerValueSet = Canonical(SEU-AF-AntwortenSAeUntersuchungVS)
    * item[+] insert addItem(9.20, #choice, [[Verdacht auf Vernachlässigung (Kleidung, Pflegezustand, Verhalten)]])
      * answerValueSet = Canonical(SEU-AF-AntwortenSAeUntersuchungVS)
    * item[+] insert addItem(9.21, #choice, [[Schlechte Mundgesundheit (Massive Karies, Zahnverlust, etc.)]])
      * answerValueSet = Canonical(SEU-AF-AntwortenSAeUntersuchungVS)
    * item[+] insert addItem(9.22, #choice, [[Hämatome, Narben, Verletzungen an untypischen Stellen]])
      * answerValueSet = Canonical(SEU-AF-AntwortenSAeUntersuchungVS)
    * item[+] insert addItem(9.23, #boolean, [[Impfungen wurden im Rahmen der 2. SÄU nachgeholt]])
    * item[+] insert addItem(9.24, #string, [[Nachgeholte Impfungen im Rahmen der 2. SÄU]])
      * insert EnableWhenBoolean(9.23, =, true)
    * item[+] insert addItem(9.25, #boolean, [[weitere Abklärung körperl. Befunde durch Kinder-/Jugendarzt]])
    * item[+] insert addItem(9.26, #boolean, [[weitere Abklärung körperl. Befunde durch Augenarzt]])
    * item[+] insert addItem(9.27, #boolean, [[weitere Abklärung körperl. Befunde durch HNO-Arzt]])
    * item[+] insert addItem(9.28, #boolean, [[weitere Abklärung körperl. Befunde durch Zahnarzt]])
    * item[+] insert addItem(9.29, #boolean, [[weitere Abklärung körperl. Befunde durch sonst. Facharzt]])
    * item[+] insert addItem(9.30, #boolean, [[weitere Abklärung sonstige]])
    * item[+] insert addItem(9.31, #boolean, [[körpl. Befunde, die eine Relevanz für den Schulalltag haben]])
  * item[+] insert addGroup(9_3, [[Untersuchungsergebnisse zur Entwicklung (2. SÄU)]])
    * item[+] insert addItem(9.32, #choice, [[Nonverbale Intelligenz (2. SÄU)]])
      * answerValueSet = Canonical(SEU-AF-UntersuchungsergebnisseSAeUVS)
    * item[+] insert addItem(9.33, #choice, [[Nonverbale Intelligenz (2. SÄU) - Vgl. zur 1. SÄU]])
      * answerValueSet = Canonical(SEU-AF-VergleichSAeUntersuchungVS)
      * insert EnableWhenCode(9.32, =, SEU-AF-UntersuchungsergebnisseSAeUCS, 02)
      * insert EnableWhenCode(9.32, =, SEU-AF-UntersuchungsergebnisseSAeUCS, 03)
      * insert EnableWhenCode(9.32, =, SEU-AF-UntersuchungsergebnisseSAeUCS, 04)
      * insert EnableWhenCode(9.32, =, SEU-AF-UntersuchungsergebnisseSAeUCS, 05)
      * insert EnableWhenCode(9.32, =, SEU-AF-UntersuchungsergebnisseSAeUCS, 06)
      * insert EnableWhenCode(9.32, =, SEU-AF-UntersuchungsergebnisseSAeUCS, 07)
      * insert EnableWhenCode(9.32, =, SEU-AF-UntersuchungsergebnisseSAeUCS, 08)
      * enableBehavior = #any
    * item[+] insert addItem(9.34, #choice, [[Visuomotorik (2. SÄU)]])
      * answerValueSet = Canonical(SEU-AF-UntersuchungsergebnisseSAeUVS)
    * item[+] insert addItem(9.35, #choice, [[Visuomotorik (2. SÄU) - Vgl. zur 1. SÄU]])
      * answerValueSet = Canonical(SEU-AF-VergleichSAeUntersuchungVS)
      * insert EnableWhenCode(9.34, =, SEU-AF-UntersuchungsergebnisseSAeUCS, 02)
      * insert EnableWhenCode(9.34, =, SEU-AF-UntersuchungsergebnisseSAeUCS, 03)
      * insert EnableWhenCode(9.34, =, SEU-AF-UntersuchungsergebnisseSAeUCS, 04)
      * insert EnableWhenCode(9.34, =, SEU-AF-UntersuchungsergebnisseSAeUCS, 05)
      * insert EnableWhenCode(9.34, =, SEU-AF-UntersuchungsergebnisseSAeUCS, 06)
      * insert EnableWhenCode(9.34, =, SEU-AF-UntersuchungsergebnisseSAeUCS, 07)
      * insert EnableWhenCode(9.34, =, SEU-AF-UntersuchungsergebnisseSAeUCS, 08)
      * enableBehavior = #any
    * item[+] insert addItem(9.36, #choice, [[Mengen- und Zahlenvorwissen (2. SÄU)]])
      * answerValueSet = Canonical(SEU-AF-UntersuchungsergebnisseSAeUVS)
    * item[+] insert addItem(9.37, #choice, [[Mengen- und Zahlenvorwissen (2. SÄU) - Vgl. zur 1. SÄU]])
      * answerValueSet = Canonical(SEU-AF-VergleichSAeUntersuchungVS)
      * insert EnableWhenCode(9.36, =, SEU-AF-UntersuchungsergebnisseSAeUCS, 02)
      * insert EnableWhenCode(9.36, =, SEU-AF-UntersuchungsergebnisseSAeUCS, 03)
      * insert EnableWhenCode(9.36, =, SEU-AF-UntersuchungsergebnisseSAeUCS, 04)
      * insert EnableWhenCode(9.36, =, SEU-AF-UntersuchungsergebnisseSAeUCS, 05)
      * insert EnableWhenCode(9.36, =, SEU-AF-UntersuchungsergebnisseSAeUCS, 06)
      * insert EnableWhenCode(9.36, =, SEU-AF-UntersuchungsergebnisseSAeUCS, 07)
      * insert EnableWhenCode(9.36, =, SEU-AF-UntersuchungsergebnisseSAeUCS, 08)
      * enableBehavior = #any
    * item[+] insert addItem(9.38, #choice, [[Sprache (Grammatik, Verständnis, Wortschatz) (2. SÄU)]])
      * answerValueSet = Canonical(SEU-AF-UntersuchungsergebnisseSAeUVS)
    * item[+] insert addItem(9.39, #choice, [[Sprache (Grammatik, Verständnis, Wortschatz) (2. SÄU) - Vgl. zur 1. SÄU]])
      * answerValueSet = Canonical(SEU-AF-VergleichSAeUntersuchungVS)
      * insert EnableWhenCode(9.38, =, SEU-AF-UntersuchungsergebnisseSAeUCS, 02)
      * insert EnableWhenCode(9.38, =, SEU-AF-UntersuchungsergebnisseSAeUCS, 03)
      * insert EnableWhenCode(9.38, =, SEU-AF-UntersuchungsergebnisseSAeUCS, 04)
      * insert EnableWhenCode(9.38, =, SEU-AF-UntersuchungsergebnisseSAeUCS, 05)
      * insert EnableWhenCode(9.38, =, SEU-AF-UntersuchungsergebnisseSAeUCS, 06)
      * insert EnableWhenCode(9.38, =, SEU-AF-UntersuchungsergebnisseSAeUCS, 07)
      * insert EnableWhenCode(9.38, =, SEU-AF-UntersuchungsergebnisseSAeUCS, 08)
      * enableBehavior = #any
    * item[+] insert addItem(9.40, #choice, [[Sprechen (Lautbildung, Stottern, Stimme) (2. SÄU)]])
      * answerValueSet = Canonical(SEU-AF-UntersuchungsergebnisseSAeUVS)
    * item[+] insert addItem(9.41, #choice, [[Sprechen (Lautbildung, Stottern, Stimme) (2. SÄU) - Vgl. zur 1. SÄU]])
      * answerValueSet = Canonical(SEU-AF-VergleichSAeUntersuchungVS)
      * insert EnableWhenCode(9.40, =, SEU-AF-UntersuchungsergebnisseSAeUCS, 02)
      * insert EnableWhenCode(9.40, =, SEU-AF-UntersuchungsergebnisseSAeUCS, 03)
      * insert EnableWhenCode(9.40, =, SEU-AF-UntersuchungsergebnisseSAeUCS, 04)
      * insert EnableWhenCode(9.40, =, SEU-AF-UntersuchungsergebnisseSAeUCS, 05)
      * insert EnableWhenCode(9.40, =, SEU-AF-UntersuchungsergebnisseSAeUCS, 06)
      * insert EnableWhenCode(9.40, =, SEU-AF-UntersuchungsergebnisseSAeUCS, 07)
      * insert EnableWhenCode(9.40, =, SEU-AF-UntersuchungsergebnisseSAeUCS, 08)
      * enableBehavior = #any
    * item[+] insert addItem(9.42, #choice, [[Körperkoordination (2. SÄU)]])
      * answerValueSet = Canonical(SEU-AF-UntersuchungsergebnisseSAeUVS)
    * item[+] insert addItem(9.43, #choice, [[Körperkoordination (2. SÄU) - Vgl. zur 1. SÄU]])
      * answerValueSet = Canonical(SEU-AF-VergleichSAeUntersuchungVS)
      * insert EnableWhenCode(9.42, =, SEU-AF-UntersuchungsergebnisseSAeUCS, 02)
      * insert EnableWhenCode(9.42, =, SEU-AF-UntersuchungsergebnisseSAeUCS, 03)
      * insert EnableWhenCode(9.42, =, SEU-AF-UntersuchungsergebnisseSAeUCS, 04)
      * insert EnableWhenCode(9.42, =, SEU-AF-UntersuchungsergebnisseSAeUCS, 05)
      * insert EnableWhenCode(9.42, =, SEU-AF-UntersuchungsergebnisseSAeUCS, 06)
      * insert EnableWhenCode(9.42, =, SEU-AF-UntersuchungsergebnisseSAeUCS, 07)
      * insert EnableWhenCode(9.42, =, SEU-AF-UntersuchungsergebnisseSAeUCS, 08)
      * enableBehavior = #any
    * item[+] insert addItem(9.44, #string, [[Anmerkungen intern (2. SÄU)]])
  * item[+] insert addGroup(9_4, [[Folgende Maßnahmen haben seit der 1. SÄU stattgefunden oder laufen derzeit]])
    * item[+] insert addItem(9.45, #boolean, [[Frühförderung]])
    * item[+] insert addItem(9.46, #boolean, [[Logopädie]])
    * item[+] insert addItem(9.47, #boolean, [[Ergotherapie]])
    * item[+] insert addItem(9.48, #boolean, [[Physiotherapie]])
    * item[+] insert addItem(9.49, #boolean, [[Abklärung beim Kinder-/Jugendarzt]])
    * item[+] insert addItem(9.50, #boolean, [[Abklärung beim Augenarzt]])
    * item[+] insert addItem(9.51, #boolean, [[Abklärung beim HNO-Arzt]])
    * item[+] insert addItem(9.52, #boolean, [[Abklärung beim Zahnarzt]])
    * item[+] insert addItem(9.53, #boolean, [[Abklärung sonstiger Facharzt]])
    * item[+] insert addItem(9.54, #boolean, [[Abklärung SPZ]])
    * item[+] insert addItem(9.55, #boolean, [[Sonstiges]])
  * item[+] insert addGroup(9_5, [[Vorkurs Deutsch]])
    * item[+] insert addItem(9.56, #boolean, [[Teilnahme Vorkurs Deutsch im Vorjahr empfohlen]])
    * item[+] insert addItem(9.57, #choice, [[Teilnahme hat stattgefunden]])
      * answerValueSet = Canonical(SEU-AF-AntwortTeilnahmeVS)
      * insert EnableWhenBoolean(9.56, =, true)
    * item[+] insert addItem(9.58, #string, [[Gründe für NICHT-Teilnahme]])
      * insert EnableWhenCode(9.57, =, SEU-AF-AntwortTeilnahmeCS, 2)
      * insert EnableWhenCode(9.57, =, SEU-AF-AntwortTeilnahmeCS, 3)
      * enableBehavior = #any
  * item[+] insert addGroup(9_6, [[Weitere Empfehlungen aus 2. Schulärztlicher Untersuchung zur Entwicklung]])
    * item[+] insert addItem(9.59, #boolean, [[Rückstellung empfohlen]])
    * item[+] insert addItem(9.60, #boolean, [[Besuch Förderzentrum empfohlen]])
    * item[+] insert addItem(9.61, #boolean, [[Sonstiges]])
    * item[+] insert addItem(9.62, #boolean, [[Befunde, die eine Relevanz für den Schulalltag haben]])
  * item[+] insert addGroup(9_7, [[Weitergabe folgender Informationen an die Schulleitung]])
    * item[+] insert addItem(9.63, #boolean, [[auffälliges Ergebnis bei Sprachstand, Vorkurs Deutsch erforderlich]])
    * item[+] insert addItem(9.64, #boolean, [[individuelle Förderung erforderlich]])
    * item[+] insert addItem(9.65, #boolean, [[med. Maßnahme ggf. erforderlich]])




CodeSystem: SEU-AF-VergleichSAeUntersuchungCS
Id: SEU-AF-VergleichSAeUntersuchungCS
Title: "SEU Vergleich schulärztliche Untersuchungen"
* #1 "ohne Veränderung"
* #2 "eine Verbesserung"
* #3 "eine Verschlechterung"

ValueSet: SEU-AF-VergleichSAeUntersuchungVS
Id: SEU-AF-VergleichSAeUntersuchungVS
Title: "SEU Vergleich schulärztliche Untersuchungen"
Description: "Diese Codes enthalten Vergleichswerte von schulärztlichen Untersuchungen"
* include codes from system SEU-AF-VergleichSAeUntersuchungCS
* ^expansion.contains[+].system = Canonical(SEU-AF-VergleichSAeUntersuchungCS)
* ^expansion.contains[=].code = #1
* ^expansion.contains[=].display = "ohne Veränderung"
* ^expansion.contains[+].system = Canonical(SEU-AF-VergleichSAeUntersuchungCS)
* ^expansion.contains[=].code = #2
* ^expansion.contains[=].display = "eine Verbesserung"
* ^expansion.contains[+].system = Canonical(SEU-AF-VergleichSAeUntersuchungCS)
* ^expansion.contains[=].code = #3
* ^expansion.contains[=].display = "eine Verschlechterung"


CodeSystem: SEU-AF-AntwortTeilnahmeCS
Id: SEU-AF-AntwortTeilnahmeCS
Title: "SEU Antwort auf Fragen zur Teilnahme"
* #1 "ja"
* #2 "nein"
* #3 "teilweise"
* #9 "keine Angabe"

ValueSet: SEU-AF-AntwortTeilnahmeVS
Id: SEU-AF-AntwortTeilnahmeVS
Title: "SEU Antwort auf Fragen zur Teilnahme"
Description: "Diese Codes enthalten Antworten zur Teilnahme an etwas"
* include codes from system SEU-AF-AntwortTeilnahmeCS
* ^expansion.contains[+].system = Canonical(SEU-AF-AntwortTeilnahmeCS)
* ^expansion.contains[=].code = #1
* ^expansion.contains[=].display = "ja"
* ^expansion.contains[+].system = Canonical(SEU-AF-AntwortTeilnahmeCS)
* ^expansion.contains[=].code = #2
* ^expansion.contains[=].display = "nein"
* ^expansion.contains[+].system = Canonical(SEU-AF-AntwortTeilnahmeCS)
* ^expansion.contains[=].code = #3
* ^expansion.contains[=].display = "teilweise"
* ^expansion.contains[+].system = Canonical(SEU-AF-AntwortTeilnahmeCS)
* ^expansion.contains[=].code = #9
* ^expansion.contains[=].display = "keine Angabe"