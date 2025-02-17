RuleSet: 9-af-schulaerztlicheuntersuchung2
* item[+] insert addGroup(9, [[Schulärztliche Untersuchung (2. SÄU)]])
  * insert addSource(#DE-BY)
  * item[+] insert addItem(9.1, #date, [[Datum 2. Schulärztliche Untersuchung (2. SÄU)]]) //TODO Min eins aus der Gruppe soll ausgefüllt sein; Validierung >= 2022
    * insert addSource(#DE-BY)
  * item[+] insert addItem(9.2, #boolean, [[NUR telefon. Kontaktaufnahme mit Eltern]])
    * insert addSource(#DE-BY)
  * item[+] insert addGroup(9_1, [[Grund für 2. Schulärztliche Untersuchung]])
    * insert addSource(#DE-BY)
    * item[+] insert addItem(9.3, #boolean, [[Indikation nach 1. SÄU]])
      * insert addSource(#DE-BY)
    * item[+] insert addItem(9.4, #boolean, [[Auffälliges Ergebnis im 2. Screening]])
      * insert addSource(#DE-BY)
    * item[+] insert addItem(9.5, #boolean, [[Kind besucht keine vorschulische Einrichtung]])
      * insert addSource(#DE-BY)
    * item[+] insert addItem(9.6, #boolean, [[Eltern wünschen 2. schulärztliche Untersuchung]])
      * insert addSource(#DE-BY)
    * item[+] insert addItem(9.7, #boolean, [[Kind in SVE, Sonderpädagogischer oder integrativer Einrichtung]])
      * insert addSource(#DE-BY)
    * item[+] insert addItem(9.8, #boolean, [[Kinder-/Hausarzt empfiehlt SÄU]])
      * insert addSource(#DE-BY)
    * item[+] insert addItem(9.9, #boolean, [[Verdacht Kindeswohlgefährdung]])
      * insert addSource(#DE-BY)
    * item[+] insert addItem(9.10, #boolean, [[Sonstige Gründe]])
      * insert addSource(#DE-BY)
    * item[+] insert addItem(9.11, #boolean, [[Keine Angabe]])
      * insert addSource(#DE-BY)
  * item[+] insert addGroup(9_2, [[Körperliche Befunde der 2. Schulärztlichen Untersuchung]])
    * insert addSource(#DE-BY)
    * item[+] insert addItem(9.12, #integer, [[gemessene Körpergröße (in cm)]])
      * insert addSource(#DE-BY)
      * insert uunit(cm, "cm")
    * item[+] insert addItem(9.13, #decimal, [[gemessenes Körpergewicht (in kg)]])
      * insert addSource(#DE-BY)
      * insert uunit(kg, "kg")
    * item[+] insert addItem(9.14, #boolean, [[Körperliche Untersuchung nicht möglich]])
      * insert addSource(#DE-BY)
    * item[+] insert addItem(9.15, #string, [[Anmerkungen intern]])
      * insert addSource(#DE-BY)
    * item[+] insert addItem(9.16, #boolean, [[Bislang unbehandelte therapiebedürftige körperliche Befunde]])
      * insert addSource(#DE-BY)
    * item[+] insert addItem(9.17, #string, [[Körperliche Befunde]])
      * insert addSource(#DE-BY)
      * insert enableWhenBoolean(9.16, =, true)
    * item[+] insert addItem(9.18, #choice, [[Verhaltensauffälligkeiten beim Kind]])
      * insert addSource(#DE-BY)
      * answerValueSet = Canonical(SEU_UB_AntwortenSAeUntersuchungVS)
    * item[+] insert addItem(9.19, #choice, [[Umgangs-/Erziehungsprobleme Mutter/Vater - Kind]])
      * insert addSource(#DE-BY)
      * answerValueSet = Canonical(SEU_UB_AntwortenSAeUntersuchungVS)
    * item[+] insert addItem(9.20, #choice, [[Verdacht auf Vernachlässigung (Kleidung, Pflegezustand, Verhalten)]])
      * insert addSource(#DE-BY)
      * answerValueSet = Canonical(SEU_UB_AntwortenSAeUntersuchungVS)
    * item[+] insert addItem(9.21, #choice, [[Schlechte Mundgesundheit (Massive Karies, Zahnverlust, etc.)]])
      * insert addSource(#DE-BY)
      * answerValueSet = Canonical(SEU_UB_AntwortenSAeUntersuchungVS)
    * item[+] insert addItem(9.22, #choice, [[Hämatome, Narben, Verletzungen an untypischen Stellen]])
      * insert addSource(#DE-BY)
      * answerValueSet = Canonical(SEU_UB_AntwortenSAeUntersuchungVS)
    * item[+] insert addItem(9.23, #boolean, [[Impfungen wurden im Rahmen der 2. SÄU nachgeholt]])
      * insert addSource(#DE-BY)
    * item[+] insert addItem(9.24, #string, [[Nachgeholte Impfungen im Rahmen der 2. SÄU]])
      * insert addSource(#DE-BY)
      * insert enableWhenBoolean(9.23, =, true)
    * item[+] insert addItem(9.25, #boolean, [[weitere Abklärung körperl. Befunde durch Kinder-/Jugendarzt]])
      * insert addSource(#DE-BY)
    * item[+] insert addItem(9.26, #boolean, [[weitere Abklärung körperl. Befunde durch Augenarzt]])
      * insert addSource(#DE-BY)
    * item[+] insert addItem(9.27, #boolean, [[weitere Abklärung körperl. Befunde durch HNO-Arzt]])
      * insert addSource(#DE-BY)
    * item[+] insert addItem(9.28, #boolean, [[weitere Abklärung körperl. Befunde durch Zahnarzt]])
      * insert addSource(#DE-BY)
    * item[+] insert addItem(9.29, #boolean, [[weitere Abklärung körperl. Befunde durch sonst. Facharzt]])
      * insert addSource(#DE-BY)
    * item[+] insert addItem(9.30, #boolean, [[weitere Abklärung sonstige]])
      * insert addSource(#DE-BY)
    * item[+] insert addItem(9.31, #boolean, [[körpl. Befunde, die eine Relevanz für den Schulalltag haben]])
      * insert addSource(#DE-BY)
  * item[+] insert addGroup(9_3, [[Untersuchungsergebnisse zur Entwicklung (2. SÄU)]])
    * insert addSource(#DE-BY)
    * item[+] insert addItem(9.32, #choice, [[Nonverbale Intelligenz (2. SÄU)]])
      * insert addSource(#DE-BY)
      * answerValueSet = Canonical(SEU_UB_UntersuchungsergebnisseSAeUVS)
    * item[+] insert addItem(9.33, #choice, [[Nonverbale Intelligenz (2. SÄU) - Vgl. zur 1. SÄU]])
      * insert addSource(#DE-BY)
      * answerValueSet = Canonical(SEU_UB_VergleichSAeUntersuchungVS)
      * insert enableWhenCode(9.32, =, SEU_UB_UntersuchungsergebnisseSAeUCS, 02)
      * insert enableWhenCode(9.32, =, SEU_UB_UntersuchungsergebnisseSAeUCS, 03)
      * insert enableWhenCode(9.32, =, SEU_UB_UntersuchungsergebnisseSAeUCS, 04)
      * insert enableWhenCode(9.32, =, SEU_UB_UntersuchungsergebnisseSAeUCS, 05)
      * insert enableWhenCode(9.32, =, SEU_UB_UntersuchungsergebnisseSAeUCS, 06)
      * insert enableWhenCode(9.32, =, SEU_UB_UntersuchungsergebnisseSAeUCS, 07)
      * insert enableWhenCode(9.32, =, SEU_UB_UntersuchungsergebnisseSAeUCS, 08)
      * enableBehavior = #any
    * item[+] insert addItem(9.34, #choice, [[Visuomotorik (2. SÄU)]])
      * insert addSource(#DE-BY)
      * answerValueSet = Canonical(SEU_UB_UntersuchungsergebnisseSAeUVS)
    * item[+] insert addItem(9.35, #choice, [[Visuomotorik (2. SÄU) - Vgl. zur 1. SÄU]])
      * insert addSource(#DE-BY)
      * answerValueSet = Canonical(SEU_UB_VergleichSAeUntersuchungVS)
      * insert enableWhenCode(9.34, =, SEU_UB_UntersuchungsergebnisseSAeUCS, 02)
      * insert enableWhenCode(9.34, =, SEU_UB_UntersuchungsergebnisseSAeUCS, 03)
      * insert enableWhenCode(9.34, =, SEU_UB_UntersuchungsergebnisseSAeUCS, 04)
      * insert enableWhenCode(9.34, =, SEU_UB_UntersuchungsergebnisseSAeUCS, 05)
      * insert enableWhenCode(9.34, =, SEU_UB_UntersuchungsergebnisseSAeUCS, 06)
      * insert enableWhenCode(9.34, =, SEU_UB_UntersuchungsergebnisseSAeUCS, 07)
      * insert enableWhenCode(9.34, =, SEU_UB_UntersuchungsergebnisseSAeUCS, 08)
      * enableBehavior = #any
    * item[+] insert addItem(9.36, #choice, [[Mengen- und Zahlenvorwissen (2. SÄU)]])
      * insert addSource(#DE-BY)
      * answerValueSet = Canonical(SEU_UB_UntersuchungsergebnisseSAeUVS)
    * item[+] insert addItem(9.37, #choice, [[Mengen- und Zahlenvorwissen (2. SÄU) - Vgl. zur 1. SÄU]])
      * insert addSource(#DE-BY)
      * answerValueSet = Canonical(SEU_UB_VergleichSAeUntersuchungVS)
      * insert enableWhenCode(9.36, =, SEU_UB_UntersuchungsergebnisseSAeUCS, 02)
      * insert enableWhenCode(9.36, =, SEU_UB_UntersuchungsergebnisseSAeUCS, 03)
      * insert enableWhenCode(9.36, =, SEU_UB_UntersuchungsergebnisseSAeUCS, 04)
      * insert enableWhenCode(9.36, =, SEU_UB_UntersuchungsergebnisseSAeUCS, 05)
      * insert enableWhenCode(9.36, =, SEU_UB_UntersuchungsergebnisseSAeUCS, 06)
      * insert enableWhenCode(9.36, =, SEU_UB_UntersuchungsergebnisseSAeUCS, 07)
      * insert enableWhenCode(9.36, =, SEU_UB_UntersuchungsergebnisseSAeUCS, 08)
      * enableBehavior = #any
    * item[+] insert addItem(9.38, #choice, [[Sprache (Grammatik, Verständnis, Wortschatz) (2. SÄU)]])
      * insert addSource(#DE-BY)
      * answerValueSet = Canonical(SEU_UB_UntersuchungsergebnisseSAeUVS)
    * item[+] insert addItem(9.39, #choice, [[Sprache (Grammatik, Verständnis, Wortschatz) (2. SÄU) - Vgl. zur 1. SÄU]])
      * insert addSource(#DE-BY)
      * answerValueSet = Canonical(SEU_UB_VergleichSAeUntersuchungVS)
      * insert enableWhenCode(9.38, =, SEU_UB_UntersuchungsergebnisseSAeUCS, 02)
      * insert enableWhenCode(9.38, =, SEU_UB_UntersuchungsergebnisseSAeUCS, 03)
      * insert enableWhenCode(9.38, =, SEU_UB_UntersuchungsergebnisseSAeUCS, 04)
      * insert enableWhenCode(9.38, =, SEU_UB_UntersuchungsergebnisseSAeUCS, 05)
      * insert enableWhenCode(9.38, =, SEU_UB_UntersuchungsergebnisseSAeUCS, 06)
      * insert enableWhenCode(9.38, =, SEU_UB_UntersuchungsergebnisseSAeUCS, 07)
      * insert enableWhenCode(9.38, =, SEU_UB_UntersuchungsergebnisseSAeUCS, 08)
      * enableBehavior = #any
    * item[+] insert addItem(9.40, #choice, [[Sprechen (Lautbildung, Stottern, Stimme) (2. SÄU)]])
      * insert addSource(#DE-BY)
      * answerValueSet = Canonical(SEU_UB_UntersuchungsergebnisseSAeUVS)
    * item[+] insert addItem(9.41, #choice, [[Sprechen (Lautbildung, Stottern, Stimme) (2. SÄU) - Vgl. zur 1. SÄU]])
      * insert addSource(#DE-BY)
      * answerValueSet = Canonical(SEU_UB_VergleichSAeUntersuchungVS)
      * insert enableWhenCode(9.40, =, SEU_UB_UntersuchungsergebnisseSAeUCS, 02)
      * insert enableWhenCode(9.40, =, SEU_UB_UntersuchungsergebnisseSAeUCS, 03)
      * insert enableWhenCode(9.40, =, SEU_UB_UntersuchungsergebnisseSAeUCS, 04)
      * insert enableWhenCode(9.40, =, SEU_UB_UntersuchungsergebnisseSAeUCS, 05)
      * insert enableWhenCode(9.40, =, SEU_UB_UntersuchungsergebnisseSAeUCS, 06)
      * insert enableWhenCode(9.40, =, SEU_UB_UntersuchungsergebnisseSAeUCS, 07)
      * insert enableWhenCode(9.40, =, SEU_UB_UntersuchungsergebnisseSAeUCS, 08)
      * enableBehavior = #any
    * item[+] insert addItem(9.42, #choice, [[Körperkoordination (2. SÄU)]])
      * insert addSource(#DE-BY)
      * answerValueSet = Canonical(SEU_UB_UntersuchungsergebnisseSAeUVS)
    * item[+] insert addItem(9.43, #choice, [[Körperkoordination (2. SÄU) - Vgl. zur 1. SÄU]])
      * insert addSource(#DE-BY)
      * answerValueSet = Canonical(SEU_UB_VergleichSAeUntersuchungVS)
      * insert enableWhenCode(9.42, =, SEU_UB_UntersuchungsergebnisseSAeUCS, 02)
      * insert enableWhenCode(9.42, =, SEU_UB_UntersuchungsergebnisseSAeUCS, 03)
      * insert enableWhenCode(9.42, =, SEU_UB_UntersuchungsergebnisseSAeUCS, 04)
      * insert enableWhenCode(9.42, =, SEU_UB_UntersuchungsergebnisseSAeUCS, 05)
      * insert enableWhenCode(9.42, =, SEU_UB_UntersuchungsergebnisseSAeUCS, 06)
      * insert enableWhenCode(9.42, =, SEU_UB_UntersuchungsergebnisseSAeUCS, 07)
      * insert enableWhenCode(9.42, =, SEU_UB_UntersuchungsergebnisseSAeUCS, 08)
      * enableBehavior = #any
    * item[+] insert addItem(9.44, #string, [[Anmerkungen intern (2. SÄU)]])
      * insert addSource(#DE-BY)
  * item[+] insert addGroup(9_4, [[Folgende Maßnahmen haben seit der 1. SÄU stattgefunden oder laufen derzeit]])
    * insert addSource(#DE-BY)
    * item[+] insert addItem(9.45, #boolean, [[Frühförderung]])
      * insert addSource(#DE-BY)
    * item[+] insert addItem(9.46, #boolean, [[Logopädie]])
      * insert addSource(#DE-BY)
    * item[+] insert addItem(9.47, #boolean, [[Ergotherapie]])
      * insert addSource(#DE-BY)
    * item[+] insert addItem(9.48, #boolean, [[Physiotherapie]])
      * insert addSource(#DE-BY)
    * item[+] insert addItem(9.49, #boolean, [[Abklärung beim Kinder-/Jugendarzt]])
      * insert addSource(#DE-BY)
    * item[+] insert addItem(9.50, #boolean, [[Abklärung beim Augenarzt]])
      * insert addSource(#DE-BY)
    * item[+] insert addItem(9.51, #boolean, [[Abklärung beim HNO-Arzt]])
      * insert addSource(#DE-BY)
    * item[+] insert addItem(9.52, #boolean, [[Abklärung beim Zahnarzt]])
      * insert addSource(#DE-BY)
    * item[+] insert addItem(9.53, #boolean, [[Abklärung sonstiger Facharzt]])
      * insert addSource(#DE-BY)
    * item[+] insert addItem(9.54, #boolean, [[Abklärung SPZ]])
      * insert addSource(#DE-BY)
    * item[+] insert addItem(9.55, #boolean, [[Sonstiges]])
      * insert addSource(#DE-BY)
  * item[+] insert addGroup(9_5, [[Vorkurs Deutsch]])
    * insert addSource(#DE-BY)
    * item[+] insert addItem(9.56, #boolean, [[Teilnahme Vorkurs Deutsch im Vorjahr empfohlen]])
      * insert addSource(#DE-BY)
    * item[+] insert addItem(9.57, #choice, [[Teilnahme hat stattgefunden]])
      * insert addSource(#DE-BY)
      * answerValueSet = Canonical(SEU_UB_AntwortTeilnahmeVS)
      * insert enableWhenBoolean(9.56, =, true)
    * item[+] insert addItem(9.58, #string, [[Gründe für NICHT-Teilnahme]])
      * insert addSource(#DE-BY)
      * insert enableWhenCode(9.57, =, SEU_UB_AntwortTeilnahmeCS, 2)
      * insert enableWhenCode(9.57, =, SEU_UB_AntwortTeilnahmeCS, 3)
      * enableBehavior = #any
  * item[+] insert addGroup(9_6, [[Weitere Empfehlungen aus 2. Schulärztlicher Untersuchung zur Entwicklung]])
    * insert addSource(#DE-BY)
    * item[+] insert addItem(9.59, #boolean, [[Rückstellung empfohlen]])
      * insert addSource(#DE-BY)
    * item[+] insert addItem(9.60, #boolean, [[Besuch Förderzentrum empfohlen]])
      * insert addSource(#DE-BY)
    * item[+] insert addItem(9.61, #boolean, [[Sonstiges]])
      * insert addSource(#DE-BY)
    * item[+] insert addItem(9.62, #boolean, [[Befunde, die eine Relevanz für den Schulalltag haben]])
      * insert addSource(#DE-BY)
  * item[+] insert addGroup(9_7, [[Weitergabe folgender Informationen an die Schulleitung]])
    * insert addSource(#DE-BY)
    * item[+] insert addItem(9.63, #boolean, [[auffälliges Ergebnis bei Sprachstand, Vorkurs Deutsch erforderlich]])
      * insert addSource(#DE-BY)
    * item[+] insert addItem(9.64, #boolean, [[individuelle Förderung erforderlich]])
      * insert addSource(#DE-BY)
    * item[+] insert addItem(9.65, #boolean, [[med. Maßnahme ggf. erforderlich]])
      * insert addSource(#DE-BY)


CodeSystem: SEU_UB_VergleichSAeUntersuchungCS
Id: SEU-UB-VergleichSAeUntersuchungCS
Title: "SEU Vergleich schulärztliche Untersuchungen"
* #1 "ohne Veränderung"
* #2 "eine Verbesserung"
* #3 "eine Verschlechterung"

ValueSet: SEU_UB_VergleichSAeUntersuchungVS
Id: SEU-UB-VergleichSAeUntersuchungVS
Title: "SEU Vergleich schulärztliche Untersuchungen"
Description: "Diese Codes enthalten Vergleichswerte von schulärztlichen Untersuchungen"
* include codes from system SEU_UB_VergleichSAeUntersuchungCS
* ^expansion.timestamp = "2024-10-20T11:50:47+00:00"
* ^expansion.contains[+].system = Canonical(SEU_UB_VergleichSAeUntersuchungCS)
* ^expansion.contains[=].code = #1
* ^expansion.contains[=].display = "ohne Veränderung"
* ^expansion.contains[+].system = Canonical(SEU_UB_VergleichSAeUntersuchungCS)
* ^expansion.contains[=].code = #2
* ^expansion.contains[=].display = "eine Verbesserung"
* ^expansion.contains[+].system = Canonical(SEU_UB_VergleichSAeUntersuchungCS)
* ^expansion.contains[=].code = #3
* ^expansion.contains[=].display = "eine Verschlechterung"


CodeSystem: SEU_UB_AntwortTeilnahmeCS
Id: SEU-UB-AntwortTeilnahmeCS
Title: "SEU Antwort auf Fragen zur Teilnahme"
* #1 "ja"
* #2 "nein"
* #3 "teilweise"
* #9 "keine Angabe"

ValueSet: SEU_UB_AntwortTeilnahmeVS
Id: SEU-UB-AntwortTeilnahmeVS
Title: "SEU Antwort auf Fragen zur Teilnahme"
Description: "Diese Codes enthalten Antworten zur Teilnahme an etwas"
* include codes from system SEU_UB_AntwortTeilnahmeCS
* ^expansion.timestamp = "2024-10-20T11:50:47+00:00"
* ^expansion.contains[+].system = Canonical(SEU_UB_AntwortTeilnahmeCS)
* ^expansion.contains[=].code = #1
* ^expansion.contains[=].display = "ja"
* ^expansion.contains[+].system = Canonical(SEU_UB_AntwortTeilnahmeCS)
* ^expansion.contains[=].code = #2
* ^expansion.contains[=].display = "nein"
* ^expansion.contains[+].system = Canonical(SEU_UB_AntwortTeilnahmeCS)
* ^expansion.contains[=].code = #3
* ^expansion.contains[=].display = "teilweise"
* ^expansion.contains[+].system = Canonical(SEU_UB_AntwortTeilnahmeCS)
* ^expansion.contains[=].code = #9
* ^expansion.contains[=].display = "keine Angabe"