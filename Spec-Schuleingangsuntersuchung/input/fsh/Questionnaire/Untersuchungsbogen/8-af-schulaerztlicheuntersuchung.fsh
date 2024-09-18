RuleSet: 8-af-schulaerztlicheuntersuchung
* item[+] insert addGroup(8, [[Schulärztliche Untersuchung (1. SÄU)]])
  * insert addSource(#DE-BY)
  * item[+] insert addItem(8.1, #date, [[Datum 1. Schulärztliche Untersuchung (SÄU)]])
    * insert addSource(#DE-BY)
  * item[+] insert addItem(8.2, #boolean, [[NUR telefon. Kontaktaufnahme mit Eltern]])
    * insert addSource(#DE-BY)
  * item[+] insert addGroup(8_1, [[Grund für 1. Schulärztliche Untersuchung]]) //TODO Min eins aus der Gruppe soll ausgefüllt sein: Choice-type mit allen Möglichkeiten und repeats
    * insert addSource(#DE-BY)
    * item[+] insert addItem(8.3, #boolean, [[Auffälligkeiten im Anamnesebogen]])
      * insert addSource(#DE-BY)
    * item[+] insert addItem(8.4, #boolean, [[Auffälliges Ergebnis im Elternfragebogen]])
      * insert addSource(#DE-BY)
    * item[+] insert addItem(8.5, #boolean, [[Auffälliger SDQ]])
      * insert addSource(#DE-BY)
    * item[+] insert addItem(8.6, #boolean, [[Auffälliges Ergebnis im Screening]])
      * insert addSource(#DE-BY)
    * item[+] insert addItem(8.7, #boolean, [[Kind besucht keine vorschulische Einrichtung]])
      * insert addSource(#DE-BY)
    * item[+] insert addItem(8.8, #boolean, [[Eltern wünschen schulärztliche Untersuchung]])
      * insert addSource(#DE-BY)
    * item[+] insert addItem(8.9, #boolean, [[Fehlende U8]])
      * insert addSource(#DE-BY)
    * item[+] insert addItem(8.10, #boolean, [[Fehlende U9]])
      * insert addSource(#DE-BY)
    * item[+] insert addItem(8.11, #boolean, [[U8 auffällig]])
      * insert addSource(#DE-BY)
    * item[+] insert addItem(8.12, #boolean, [[U9 auffällig]])
      * insert addSource(#DE-BY)
    * item[+] insert addItem(8.13, #boolean, [[Kind in SVE, Sonderpädagogischer oder integrativer Einrichtung]])
      * insert addSource(#DE-BY)
    * item[+] insert addItem(8.14, #boolean, [[Kinder-/Hausarzt empfiehlt SÄU]])
      * insert addSource(#DE-BY)
    * item[+] insert addItem(8.15, #boolean, [[Verdacht Kindeswohlgefährdung]])
      * insert addSource(#DE-BY)
    * item[+] insert addItem(8.16, #boolean, [[Sonstige Gründe]])
      * insert addSource(#DE-BY)
    * item[+] insert addItem(8.17, #boolean, [[Keine Angabe]])
      * insert addSource(#DE-BY)
  * item[+] insert addGroup(8_2, [[Körperliche Befunde aus der 1. Schulärztlichen Untersuchung]])
    * insert addSource(#DE-BY)
    * item[+] insert addItem(8.18, #integer, [[gemessene Körpergröße (in cm)]])
      * insert addSource(#DE-BY)
      * insert uunit(cm, "cm")
    * item[+] insert addItem(8.19, #decimal, [[gemessenes Körpergewicht (in kg)]])
      * insert addSource(#DE-BY)
      * insert uunit(kg, "kg")
    * item[+] insert addItem(8.20, #boolean, [[Körperliche Untersuchung nicht möglich]])
      * insert addSource(#DE-BY)
    * item[+] insert addItem(8.21, #string, [[Anmerkungen intern]])
      * insert addSource(#DE-BY)
    * item[+] insert addItem(8.22, #boolean, [[Bislang unbehandelte therapiebedürftige körperliche Befunde]])
      * insert addSource(#DE-BY)
    * item[+] insert addItem(8.23, #string, [[Körperliche Befunde]])
      * insert addSource(#DE-BY)
      * insert enableWhenBoolean(8.22, =, true)
    * item[+] insert addItem(8.24, #choice, [[Verhaltensauffälligkeiten beim Kind]])
      * insert addSource(#DE-BY)
      * answerValueSet = Canonical(SEU_UB_AntwortenSAeUntersuchungVS)
    * item[+] insert addItem(8.25, #boolean, [[Umgangs-/Erziehungsprobleme Mutter/Vater - Kind]])
      * insert addSource(#DE-BY)
      * answerValueSet = Canonical(SEU_UB_AntwortenSAeUntersuchungVS)
    * item[+] insert addItem(8.26, #boolean, [[Verdacht auf Vernachlässigung (Kleidung, Pflegezustand, Verhalten)]])
      * insert addSource(#DE-BY)
      * answerValueSet = Canonical(SEU_UB_AntwortenSAeUntersuchungVS)
    * item[+] insert addItem(8.27, #boolean, [[Schlechte Mundgesundheit (Massive Karies, Zahnverlust, etc.)]])
      * insert addSource(#DE-BY)
      * answerValueSet = Canonical(SEU_UB_AntwortenSAeUntersuchungVS)
    * item[+] insert addItem(8.28, #boolean, [[Hämatome, Narben, Verletzungen an untypischen Stellen]])
      * insert addSource(#DE-BY)
      * answerValueSet = Canonical(SEU_UB_AntwortenSAeUntersuchungVS)
    * item[+] insert addItem(8.29, #boolean, [[Impfungen wurden im Rahmen der 1. SÄU nachgeholt]])
      * insert addSource(#DE-BY)
    * item[+] insert addItem(8.30, #string, [[Nachgeholte Impfungen im Rahmen der 1. SÄU]])
      * insert addSource(#DE-BY)
      * insert enableWhenBoolean(8.29, =, true)
    * item[+] insert addItem(8.31, #boolean, [[weitere Abklärung körperl. Befunde durch Kinder-/Jugendarzt]])
      * insert addSource(#DE-BY)
    * item[+] insert addItem(8.32, #boolean, [[weitere Abklärung körperl. Befunde durch Augenarzt]])
      * insert addSource(#DE-BY)
    * item[+] insert addItem(8.33, #boolean, [[weitere Abklärung körperl. Befunde durch HNO-Arzt]])
      * insert addSource(#DE-BY)
    * item[+] insert addItem(8.34, #boolean, [[weitere Abklärung körperl. Befunde durch Zahnarzt]])
      * insert addSource(#DE-BY)
    * item[+] insert addItem(8.35, #boolean, [[weitere Abklärung körperl. Befunde durch sonst. Facharzt]])
      * insert addSource(#DE-BY)
    * item[+] insert addItem(8.36, #boolean, [[weitere Abklärung sonstige]])
      * insert addSource(#DE-BY)
    * item[+] insert addItem(8.37, #boolean, [[körpl. Befunde, die eine Relevanz für den Schulalltag haben]])
      * insert addSource(#DE-BY)
  * item[+] insert addGroup(8_3, Befunde zum Entwicklungsstand)
    * insert addSource(#DE-BY)
    * item[+] insert addGroup(8_3_1, Auffälligkeiten aus Entwicklungsscreening sind Eltern bekannt)
      * insert addSource(#DE-BY)
      * item[+] insert addItem(8.38, #boolean, [[Nonverbale Intelligenz (1.SÄU)]])
        * insert addSource(#DE-BY)
      * item[+] insert addItem(8.39, #boolean, [[Visuomotorik (1. SÄU)]])
        * insert addSource(#DE-BY)
      * item[+] insert addItem(8.40, #boolean, [[Mengen- und Zahlenvorwissen (1. SÄU)]])
        * insert addSource(#DE-BY)
      * item[+] insert addItem(8.41, #boolean, [[Sprache (Grammatik, Verständnis, Wortschatz) (1. SÄU)]])
        * insert addSource(#DE-BY)
      * item[+] insert addItem(8.42, #boolean, [[Sprechen (Lautbildung, Stottern, Stimme) (1. SÄU)]])
        * insert addSource(#DE-BY)
      * item[+] insert addItem(8.43, #boolean, [[Körperkoordination (1. SÄU)]])
        * insert addSource(#DE-BY)
    * item[+] insert addGroup(

8_3_2, Auffälligkeiten aus Entwicklungsscreening sind ärztlich abgeklärt)
      * insert addSource(#DE-BY)
      * item[+] insert addItem(8.44, #boolean, [[Nonverbale Intelligenz (1. SÄU)]])
        * insert addSource(#DE-BY)
      * item[+] insert addItem(8.45, #boolean, [[Visuomotorik (1. SÄU)]])
        * insert addSource(#DE-BY)
      * item[+] insert addItem(8.46, #boolean, [[Mengen- und Zahlenvorwissen (1. SÄU)]])
        * insert addSource(#DE-BY)
      * item[+] insert addItem(8.47, #boolean, [[Sprache (Grammatik, Verständnis, Wortschatz) (1. SÄU)]])
        * insert addSource(#DE-BY)
      * item[+] insert addItem(8.48, #boolean, [[Sprechen (Lautbildung, Stottern, Stimme) (1. SÄU)]])
        * insert addSource(#DE-BY)
      * item[+] insert addItem(8.49, #boolean, [[Körperkoordination (1. SÄU)]])
        * insert addSource(#DE-BY)
    * item[+] insert addGroup(8_3_3, [[Untersuchungsergebnisse zur Entwicklung (1. SÄU)]])
      * insert addSource(#DE-BY)
      * item[+] insert addItem(8.50, #choice, [[Nonverbale Intelligenz (1. SÄU)]])
        * insert addSource(#DE-BY)
        * answerValueSet = Canonical(SEU_UB_UntersuchungsergebnisseSAeUVS)
      * item[+] insert addItem(8.51, #choice, [[Visuomotorik (1. SÄU)]])
        * insert addSource(#DE-BY)
        * answerValueSet = Canonical(SEU_UB_UntersuchungsergebnisseSAeUVS)
      * item[+] insert addItem(8.52, #choice, [[Mengen- und Zahlenvorwissen (1. SÄU)]])
        * insert addSource(#DE-BY)
        * answerValueSet = Canonical(SEU_UB_UntersuchungsergebnisseSAeUVS)
      * item[+] insert addItem(8.53, #choice, [[Sprache (Grammatik, Verständnis, Wortschatz) (1. SÄU)]])
        * insert addSource(#DE-BY)
        * answerValueSet = Canonical(SEU_UB_UntersuchungsergebnisseSAeUVS)
      * item[+] insert addItem(8.54, #choice, [[Sprechen (Lautbildung, Stottern, Stimme) (1. SÄU)]])
        * insert addSource(#DE-BY)
        * answerValueSet = Canonical(SEU_UB_UntersuchungsergebnisseSAeUVS)
      * item[+] insert addItem(8.55, #choice, [[Körperkoordination (1. SÄU)]])
        * insert addSource(#DE-BY)
        * answerValueSet = Canonical(SEU_UB_UntersuchungsergebnisseSAeUVS)
    * item[+] insert addGroup(8_3_4, Folgende Therapien/Fördermaßnahmen laufen bereits)
      * insert addSource(#DE-BY)
      * item[+] insert addItem(8.56, #boolean, [[Frühförderung]])
        * insert addSource(#DE-BY)
      * item[+] insert addItem(8.57, #boolean, [[Logopädie]])
        * insert addSource(#DE-BY)
      * item[+] insert addItem(8.58, #boolean, [[Ergotherapie]])
        * insert addSource(#DE-BY)
      * item[+] insert addItem(8.59, #boolean, [[Physiotherapie]])
        * insert addSource(#DE-BY)
      * item[+] insert addItem(8.60, #boolean, [[Vorkurs Deutsch]])
        * insert addSource(#DE-BY)
      * item[+] insert addItem(8.61, #boolean, [[Sonstige(s)]])
        * insert addSource(#DE-BY)
      * item[+] insert addItem(8.62, #string, [[Welche sonstige(s)]])
        * insert addSource(#DE-BY)
        * insert enableWhenBoolean(8.61, =, true)
      * item[+] insert addItem(8.63, #string, [[Anmerkungen intern (1. SÄU)]])
        * insert addSource(#DE-BY)
    * item[+] insert addGroup(8_3_5, Weitere Empfehlungen aus 1. Schulärztlicher Untersuchung zur Entwicklung)
      * insert addSource(#DE-BY)
      * item[+] insert addItem(8.64, #boolean, [[erneutes FdS-Screening]])
        * insert addSource(#DE-BY)
      * item[+] insert addItem(8.65, #boolean, [[(Abwarten und) Wiedervorstellung zur 2. SÄU]])
        * insert addSource(#DE-BY)
      * item[+] insert addItem(8.66, #boolean, [[Rückstellung empfohlen]])
        * insert addSource(#DE-BY)
        * item[+] insert addItemWithSource(8.66.1, #string, [[Begründung Rückstellung]], #DE-SN)
          * insert enableWhenBoolean(8.66, =, true)
      * item[+] insert addItem(8.67, #boolean, [[Besuch Förderzentrum empfohlen]])
        * insert addSource(#DE-BY)
        * item[+] insert addItemWithSource(8.67.1, #string, [[Begründung Besuch Förderzentrum]], #DE-SN)
          * insert enableWhenBoolean(8.67, =, true)
      * item[+] insert addItem(8.68, #boolean, [[Sonstiges]])
        * insert addSource(#DE-BY)
      * item[+] insert addItem(8.69, #boolean, [[Befunde, die eine Relevanz für den Schulalltag haben]])
        * insert addSource(#DE-BY)
    * item[+] insert addGroup(8_3_6, Weitergabe folgender Informationen an die Schulleitung)
      * insert addSource(#DE-BY)
      * item[+] insert addItem(8.70, #boolean, [[auffälliges Ergebnis bei Sprachstand, Vorkurs Deutsch erforderlich]])
        * insert addSource(#DE-BY)
      * item[+] insert addItem(8.71, #boolean, [[individuelle Förderung erforderlich]])
        * insert addSource(#DE-BY)
      * item[+] insert addItem(8.72, #boolean, [[med. Maßnahme ggf. erforderlich]])
        * insert addSource(#DE-BY)

CodeSystem: SEU_UB_AntwortenSAeUntersuchungCS
Id: SEU-UB-AntwortenSAeUntersuchungCS
Title: "SEU Antworten schulärztliche Untersuchung"
* #1 "ja"
* #2 "nein"
* #3 "nicht beurteilbar"
* #4 "nicht überprüft"

ValueSet: SEU_UB_AntwortenSAeUntersuchungVS
Id: SEU-UB-AntwortenSAeUntersuchungVS
Title: "SEU Antworten schulärztliche Untersuchung"
Description: "Diese Codes enthalten die Antworten Fragen der schulärztlichen Untersuchung"
* include codes from system SEU_UB_AntwortenSAeUntersuchungCS
* ^expansion.contains[+].system = Canonical(SEU_UB_AntwortenSAeUntersuchungCS)
* ^expansion.contains[=].code = #1
* ^expansion.contains[=].display = "ja"
* ^expansion.contains[+].system = Canonical(SEU_UB_AntwortenSAeUntersuchungCS)
* ^expansion.contains[=].code = #2
* ^expansion.contains[=].display = "nein"
* ^expansion.contains[+].system = Canonical(SEU_UB_AntwortenSAeUntersuchungCS)
* ^expansion.contains[=].code = #3
* ^expansion.contains[=].display = "nicht beurteilbar"
* ^expansion.contains[+].system = Canonical(SEU_UB_AntwortenSAeUntersuchungCS)
* ^expansion.contains[=].code = #4
* ^expansion.contains[=].display = "nicht überprüft"

CodeSystem: SEU_UB_UntersuchungsergebnisseSAeUCS
Id: SEU-UB-UntersuchungsergebnisseSAeUCS
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

ValueSet: SEU_UB_UntersuchungsergebnisseSAeUVS
Id: SEU-UB-UntersuchungsergebnisseSAeUVS
Title: "SEU Untersuchungsergebnisse SÄU"
Description: "Diese Codes enthalten Untersuchungsergebnisse der SÄU"
* include codes from system SEU_UB_UntersuchungsergebnisseSAeUCS
* ^expansion.contains[+].system = Canonical(SEU_UB_UntersuchungsergebnisseSAeUCS)
* ^expansion.contains[=].code = #01
* ^expansion.contains[=].display = "unauffälliger Befund"
* ^expansion.contains[+].system = Canonical(SEU_UB_UntersuchungsergebnisseSAeUCS)
* ^expansion.contains[=].code = #02
* ^expansion.contains[=].display = "Abklärung beim Kinder-/Jugendarzt"
* ^expansion.contains[+].system = Canonical(SEU_UB_UntersuchungsergebnisseSAeUCS)
* ^expansion.contains[=].code = #03
* ^expansion.contains[=].display = "Abklärung durch sonstigen Facharzt"
* ^expansion.contains[+].system = Canonical(SEU_UB_UntersuchungsergebnisseSAeUCS)
* ^expansion.contains[=].code = #04
* ^expansion.contains[=].display = "Abklärung Frühförderstelle"
* ^expansion.contains[+].system = Canonical(SEU_UB_UntersuchungsergebnisseSAeUCS)
* ^expansion.contains[=].code = #05
* ^expansion.contains[=].display = "häusliche Förderung ausreichend"
* ^expansion.contains[+].system = Canonical(SEU_UB_UntersuchungsergebnisseSAeUCS)
* ^expansion.contains[=].code = #06
* ^expansion.contains[=].display = "Teilnahme Vorkurs Deutsch empfohlen"
* ^expansion.contains[+].system = Canonical(SEU_UB_UntersuchungsergebnisseSAeUCS)
* ^expansion.contains[=].code = #07
* ^expansion.contains[=].display = "Kind ist wegen des Befundes bereits in Behandlung"
* ^expansion.contains[+].system = Canonical(SEU_UB_UntersuchungsergebnisseSAeUCS)
* ^expansion.contains[=].code = #08
* ^expansion.contains[=].display = "Behinderung bzw. dauerhafte Schädigung des Kindes"
* ^expansion.contains[+].system = Canonical(SEU_UB_UntersuchungsergebnisseSAeUCS)
* ^expansion.contains[=].code = #09
* ^expansion.contains[=].display = "Testbereich nicht beurteilbar"
* ^expansion.contains[+].system = Canonical(SEU_UB_UntersuchungsergebnisseSAeUCS)
* ^expansion.contains[=].code = #10
* ^expansion.contains[=].display = "Testbereich nicht überprüft"
