RuleSet: 8-af-schulaerztlicheuntersuchung
* item[+] insert addGroup(8, [[Schulärztliche Untersuchung (1. SÄU)]])
  * item[+] insert addItem(8.1, #date, [[Datum 1. Schulärztliche Untersuchung (SÄU)]])
  * item[+] insert addItem(8.2, #boolean, [[NUR telefon. Kontaktaufnahme mit Eltern]])
  * item[+] insert addGroup(8_1, [[Grund für 1. Schulärztliche Untersuchung]]) //TODO Min eins aus der Gruppe soll ausgefüllt sein
    * item[+] insert addItem(8.3, #boolean, [[Auffälligkeiten im Anamnesebogen]])
    * item[+] insert addItem(8.4, #boolean, [[Auffälliges Ergebnis im Elternfragebogen]])
    * item[+] insert addItem(8.5, #boolean, [[Auffälliger SDQ]])
    * item[+] insert addItem(8.6, #boolean, [[Auffälliges Ergebnis im Screening]])
    * item[+] insert addItem(8.7, #boolean, [[Kind besucht keine vorschulische Einrichtung]])
    * item[+] insert addItem(8.8, #boolean, [[Eltern wünschen schulärztliche Untersuchung]])
    * item[+] insert addItem(8.9, #boolean, [[Fehlende U8]])
    * item[+] insert addItem(8.10, #boolean, [[Fehlende U9]])
    * item[+] insert addItem(8.11, #boolean, [[U8 auffällig]])
    * item[+] insert addItem(8.12, #boolean, [[U9 auffällig]])
    * item[+] insert addItem(8.13, #boolean, [[Kind in SVE, Sonderpädagogischer oder integrativer Einrichtung]])
    * item[+] insert addItem(8.14, #boolean, [[Kinder-/Hausarzt empfiehlt SÄU]])
    * item[+] insert addItem(8.15, #boolean, [[Verdacht Kindeswohlgefährdung]])
    * item[+] insert addItem(8.16, #boolean, [[Sonstige Gründe]])
    * item[+] insert addItem(8.17, #boolean, [[Keine Angabe]])
  * item[+] insert addGroup(8_2, [[Körperliche Befunde aus der 1. Schulärztlichen Untersuchung]])
    * item[+] insert addItem(8.18, #integer, [[gemessene Körpergröße (in cm)]])
      * insert uunit(cm, "cm")
    * item[+] insert addItem(8.19, #decimal, [[gemessenes Körpergewicht (in kg)]])
      * insert uunit(kg, "kg")
    * item[+] insert addItem(8.20, #boolean, [[Körperliche Untersuchung nicht möglich]])
    * item[+] insert addItem(8.21, #string, [[Anmerkungen intern]])
    * item[+] insert addItem(8.22, #boolean, [[Bislang unbehandelte therapiebedürftige körperliche Befunde]])
    * item[+] insert addItem(8.23, #string, [[Körperliche Befunde]])
      * insert EnableWhenBoolean(8.22, =, true)
    * item[+] insert addItem(8.24, #choice, [[Verhaltensauffälligkeiten beim Kind]])
      * answerValueSet = Canonical(SEU-AF-AntwortenSAeUntersuchungVS)
    * item[+] insert addItem(8.25, #boolean, [[Umgangs-/Erziehungsprobleme Mutter/Vater - Kind]])
      * answerValueSet = Canonical(SEU-AF-AntwortenSAeUntersuchungVS)
    * item[+] insert addItem(8.26, #boolean, [[Verdacht auf Vernachlässigung (Kleidung, Pflegezustand, Verhalten)]])
      * answerValueSet = Canonical(SEU-AF-AntwortenSAeUntersuchungVS)
    * item[+] insert addItem(8.27, #boolean, [[Schlechte Mundgesundheit (Massive Karies, Zahnverlust, etc.)]])
      * answerValueSet = Canonical(SEU-AF-AntwortenSAeUntersuchungVS)
    * item[+] insert addItem(8.28, #boolean, [[Hämatome, Narben, Verletzungen an untypischen Stellen]])
      * answerValueSet = Canonical(SEU-AF-AntwortenSAeUntersuchungVS)
    * item[+] insert addItem(8.29, #boolean, [[Impfungen wurden im Rahmen der 1. SÄU nachgeholt]])
    * item[+] insert addItem(8.30, #string, [[Nachgeholte Impfungen im Rahmen der 1. SÄU]])
      * insert EnableWhenBoolean(8.29, =, true)
    * item[+] insert addItem(8.31, #boolean, [[weitere Abklärung körperl. Befunde durch Kinder-/Jugendarzt]])
    * item[+] insert addItem(8.32, #boolean, [[weitere Abklärung körperl. Befunde durch Augenarzt]])
    * item[+] insert addItem(8.33, #boolean, [[weitere Abklärung körperl. Befunde durch HNO-Arzt]])
    * item[+] insert addItem(8.34, #boolean, [[weitere Abklärung körperl. Befunde durch Zahnarzt]])
    * item[+] insert addItem(8.35, #boolean, [[weitere Abklärung körperl. Befunde durch sonst. Facharzt]])
    * item[+] insert addItem(8.36, #boolean, [[weitere Abklärung sonstige]])
    * item[+] insert addItem(8.37, #boolean, [[körpl. Befunde, die eine Relevanz für den Schulalltag haben]])
  * item[+] insert addGroup(8_3, Befunde zum Entwicklungsstand)
    * item[+] insert addGroup(8_3_1, Auffälligkeiten aus Entwicklungsscreening sind Eltern bekannt)
      * item[+] insert addItem(8.38, #boolean, [[Nonverbale Intelligenz (1.SÄU)]])
      * item[+] insert addItem(8.39, #boolean, [[Visuomotorik (1. SÄU)]])
      * item[+] insert addItem(8.40, #boolean, [[Mengen- und Zahlenvorwissen (1. SÄU)]])
      * item[+] insert addItem(8.41, #boolean, [[Sprache (Grammatik, Verständnis, Wortschatz) (1. SÄU)]])
      * item[+] insert addItem(8.42, #boolean, [[Sprechen (Lautbildung, Stottern, Stimme) (1. SÄU)]])
      * item[+] insert addItem(8.43, #boolean, [[Körperkoordination (1. SÄU)]])
    * item[+] insert addGroup(8_3_2, Auffälligkeiten aus Entwicklungsscreening sind ärztlich abgeklärt)
      * item[+] insert addItem(8.44, #boolean, [[Nonverbale Intelligenz (1. SÄU)]])
      * item[+] insert addItem(8.45, #boolean, [[Visuomotorik (1. SÄU)]])
      * item[+] insert addItem(8.46, #boolean, [[Mengen- und Zahlenvorwissen (1. SÄU)]])
      * item[+] insert addItem(8.47, #boolean, [[Sprache (Grammatik, Verständnis, Wortschatz) (1. SÄU)]])
      * item[+] insert addItem(8.48, #boolean, [[Sprechen (Lautbildung, Stottern, Stimme) (1. SÄU)]])
      * item[+] insert addItem(8.49, #boolean, [[Körperkoordination (1. SÄU)]])
    * item[+] insert addGroup(8_3_3, [[Untersuchungsergebnisse zur Entwicklung (1. SÄU)]])
      * item[+] insert addItem(8.50, #choice, [[Nonverbale Intelligenz (1. SÄU)]])
        * answerValueSet = Canonical(SEU-AF-UntersuchungsergebnisseSAeUVS)
      * item[+] insert addItem(8.51, #choice, [[Visuomotorik (1. SÄU)]])
        * answerValueSet = Canonical(SEU-AF-UntersuchungsergebnisseSAeUVS)
      * item[+] insert addItem(8.52, #choice, [[Mengen- und Zahlenvorwissen (1. SÄU)]])
        * answerValueSet = Canonical(SEU-AF-UntersuchungsergebnisseSAeUVS)
      * item[+] insert addItem(8.53, #choice, [[Sprache (Grammatik, Verständnis, Wortschatz) (1. SÄU)]])
        * answerValueSet = Canonical(SEU-AF-UntersuchungsergebnisseSAeUVS)
      * item[+] insert addItem(8.54, #choice, [[Sprechen (Lautbildung, Stottern, Stimme) (1. SÄU)]])
        * answerValueSet = Canonical(SEU-AF-UntersuchungsergebnisseSAeUVS)
      * item[+] insert addItem(8.55, #choice, [[Körperkoordination (1. SÄU)]])
        * answerValueSet = Canonical(SEU-AF-UntersuchungsergebnisseSAeUVS)
    * item[+] insert addGroup(8_3_4, Folgende Therapien/Fördermaßnahmen laufen bereits)
      * item[+] insert addItem(8.56, #boolean, [[Frühförderung]])
      * item[+] insert addItem(8.57, #boolean, [[Logopädie]])
      * item[+] insert addItem(8.58, #boolean, [[Ergotherapie]])
      * item[+] insert addItem(8.59, #boolean, [[Physiotherapie]])
      * item[+] insert addItem(8.60, #boolean, [[Vorkurs Deutsch]])
      * item[+] insert addItem(8.61, #boolean, [[Sonstige(s)]])
      * item[+] insert addItem(8.62, #string, [[Welche sonstige(s)]])
        * insert EnableWhenBoolean(8.61, =, true)
      * item[+] insert addItem(8.63, #string, [[Anmerkungen intern (1. SÄU)]])
    * item[+] insert addGroup(8_3_5, Weitere Empfehlungen aus 1. Schulärztlicher Untersuchung zur Entwicklung)
      * item[+] insert addItem(8.64, #boolean, [[erneutes FdS-Screening]])
      * item[+] insert addItem(8.65, #boolean, [[(Abwarten und) Wiedervorstellung zur 2. SÄU]])
      * item[+] insert addItem(8.66, #boolean, [[Rückstellung empfohlen]])
      * item[+] insert addItem(8.67, #boolean, [[Besuch Förderzentrum empfohlen]])
      * item[+] insert addItem(8.68, #boolean, [[Sonstiges]])
      * item[+] insert addItem(8.69, #boolean, [[Befunde, die eine Relevanz für den Schulalltag haben]])
    * item[+] insert addGroup(8_3_6, Weitergabe folgender Informationen an die Schulleitung)
      * item[+] insert addItem(8.70, #boolean, [[auffälliges Ergebnis bei Sprachstand, Vorkurs Deutsch erforderlich]])
      * item[+] insert addItem(8.71, #boolean, [[individuelle Förderung erforderlich]])
      * item[+] insert addItem(8.72, #boolean, [[med. Maßnahme ggf. erforderlich]])

CodeSystem: SEU-AF-AntwortenSAeUntersuchungCS
Id: SEU-AF-AntwortenSAeUntersuchungCS
Title: "SEU Antworten schulärztliche Untersuchung"
* #1 "ja"
* #2 "nein"
* #3 "nicht beurteilbar"
* #4 "nicht überprüft"

ValueSet: SEU-AF-AntwortenSAeUntersuchungVS
Id: SEU-AF-AntwortenSAeUntersuchungVS
Title: "SEU Antworten schulärztliche Untersuchung"
Description: "Diese Codes enthalten die Antworten Fragen der schulärztlichen Untersuchung"
* include codes from system SEU-AF-AntwortenSAeUntersuchungCS
* ^expansion.contains[+].system = Canonical(SEU-AF-AntwortenSAeUntersuchungCS)
* ^expansion.contains[=].code = #1
* ^expansion.contains[=].display = "ja"
* ^expansion.contains[+].system = Canonical(SEU-AF-AntwortenSAeUntersuchungCS)
* ^expansion.contains[=].code = #2
* ^expansion.contains[=].display = "nein"
* ^expansion.contains[+].system = Canonical(SEU-AF-AntwortenSAeUntersuchungCS)
* ^expansion.contains[=].code = #3
* ^expansion.contains[=].display = "nicht beurteilbar"
* ^expansion.contains[+].system = Canonical(SEU-AF-AntwortenSAeUntersuchungCS)
* ^expansion.contains[=].code = #4
* ^expansion.contains[=].display = "nicht überprüft"

CodeSystem: SEU-AF-UntersuchungsergebnisseSAeUCS
Id: SEU-AF-UntersuchungsergebnisseSAeUCS
Title: "SEU Untersuchungsergebnisse SÄU"
* #01 "unauffälliger Befund"
* #02 "Abklärung beim Kinder-/Jugendarzt"
* #03 "Abklärung durch sonstigen Facharzt"
* #04 "Abklärung Frühförderstelle"
* #05 "häusliche Förderung ausreichend"
* #06 "Teilnahme Vorkurs Deutsch empfohlen"
* #07 "Kind ist wegen des Befundes bereits in Behandlung"
* #08 "Behinderung bzw. dauerhafte Schädigung des Kindes"
* #09 "Testbereich nicht beurteilbar"
* #10 "Testbereich nicht überprüft"

ValueSet: SEU-AF-UntersuchungsergebnisseSAeUVS
Id: SEU-AF-UntersuchungsergebnisseSAeUVS
Title: "SEU Untersuchungsergebnisse SÄU"
Description: "Diese Codes enthalten Untersuchungsergebnisse der SÄU"
* include codes from system SEU-AF-UntersuchungsergebnisseSAeUCS
* ^expansion.contains[+].system = Canonical(SEU-AF-UntersuchungsergebnisseSAeUCS)
* ^expansion.contains[=].code = #01
* ^expansion.contains[=].display = "unauffälliger Befund"
* ^expansion.contains[+].system = Canonical(SEU-AF-UntersuchungsergebnisseSAeUCS)
* ^expansion.contains[=].code = #02
* ^expansion.contains[=].display = "Abklärung beim Kinder-/Jugendarzt"
* ^expansion.contains[+].system = Canonical(SEU-AF-UntersuchungsergebnisseSAeUCS)
* ^expansion.contains[=].code = #03
* ^expansion.contains[=].display = "Abklärung durch sonstigen Facharzt"
* ^expansion.contains[+].system = Canonical(SEU-AF-UntersuchungsergebnisseSAeUCS)
* ^expansion.contains[=].code = #04
* ^expansion.contains[=].display = "Abklärung Frühförderstelle"
* ^expansion.contains[+].system = Canonical(SEU-AF-UntersuchungsergebnisseSAeUCS)
* ^expansion.contains[=].code = #05
* ^expansion.contains[=].display = "häusliche Förderung ausreichend"
* ^expansion.contains[+].system = Canonical(SEU-AF-UntersuchungsergebnisseSAeUCS)
* ^expansion.contains[=].code = #06
* ^expansion.contains[=].display = "Teilnahme Vorkurs Deutsch empfohlen"
* ^expansion.contains[+].system = Canonical(SEU-AF-UntersuchungsergebnisseSAeUCS)
* ^expansion.contains[=].code = #07
* ^expansion.contains[=].display = "Kind ist wegen des Befundes bereits in Behandlung"
* ^expansion.contains[+].system = Canonical(SEU-AF-UntersuchungsergebnisseSAeUCS)
* ^expansion.contains[=].code = #08
* ^expansion.contains[=].display = "Behinderung bzw. dauerhafte Schädigung des Kindes"
* ^expansion.contains[+].system = Canonical(SEU-AF-UntersuchungsergebnisseSAeUCS)
* ^expansion.contains[=].code = #09
* ^expansion.contains[=].display = "Testbereich nicht beurteilbar"
* ^expansion.contains[+].system = Canonical(SEU-AF-UntersuchungsergebnisseSAeUCS)
* ^expansion.contains[=].code = #10
* ^expansion.contains[=].display = "Testbereich nicht überprüft"
