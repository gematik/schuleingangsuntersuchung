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
    * item[+] insert addItemWithSource(8.22k.1, #choice, [[Ernährungszustand]], #DE-HE)
      * answerValueSet = Canonical(SEU_UB_UntersuchungsergebnisseIBAUVS)
    * item[+] insert addItemWithSource(8.22k.2, #choice, [[Haut/Haare/Nägel]], #DE-HE)
      * answerValueSet = Canonical(SEU_UB_UntersuchungsergebnisseIBAUVS)
    * item[+] insert addItemWithSource(8.22k.3, #choice, [[Muskulatur/Skelett]], #DE-HE)
      * answerValueSet = Canonical(SEU_UB_UntersuchungsergebnisseIBAUVS)
    * item[+] insert addItemWithSource(8.22k.4, #choice, [[Nase/Mund/Ohren]], #DE-HE)
      * answerValueSet = Canonical(SEU_UB_UntersuchungsergebnisseIBAUVS)
    * item[+] insert addItemWithSource(8.22k.5, #choice, [[Atmung/Herz/Kreislauf]], #DE-HE)
      * answerValueSet = Canonical(SEU_UB_UntersuchungsergebnisseIBAUVS)
    * item[+] insert addItemWithSource(8.22k.6, #choice, [[Abdomen]], #DE-HE)
      * answerValueSet = Canonical(SEU_UB_UntersuchungsergebnisseIBAUVS)
    * item[+] insert addItemWithSource(8.22k.7, #choice, [[Neurologie]], #DE-HE)
      * answerValueSet = Canonical(SEU_UB_UntersuchungsergebnisseIBAUVS)
    * item[+] insert addItemWithSource(8.22k.8, #choice, [[Endokrinum]], #DE-HE)
      * answerValueSet = Canonical(SEU_UB_UntersuchungsergebnisseIBAUVS)
    * item[+] insert addItem(8.24, #choice, [[Verhaltensauffälligkeiten beim Kind]])
      * insert addSource(#DE-BY)
      * answerValueSet = Canonical(SEU_UB_AntwortenSAeUntersuchungVS)
    * item[+] insert addItem(8.25, #choice, [[Umgangs-/Erziehungsprobleme Mutter/Vater - Kind]])
      * insert addSource(#DE-BY)
      * answerValueSet = Canonical(SEU_UB_AntwortenSAeUntersuchungVS)
    * item[+] insert addItem(8.26, #choice, [[Verdacht auf Vernachlässigung (Kleidung, Pflegezustand, Verhalten)]])
      * insert addSource(#DE-BY)
      * answerValueSet = Canonical(SEU_UB_AntwortenSAeUntersuchungVS)
    * item[+] insert addItem(8.27, #choice, [[Schlechte Mundgesundheit (Massive Karies, Zahnverlust, etc.)]])
      * insert addSource(#DE-BY)
      * answerValueSet = Canonical(SEU_UB_AntwortenSAeUntersuchungVS)
    * item[+] insert addItem(8.28, #choice, [[Hämatome, Narben, Verletzungen an untypischen Stellen]])
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
      * item[+] insert addItemWithSource(8.41a, #choice, [[Sprache (Grammatik, Verständnis, Wortschatz) (1. SÄU)]], #DE-HE)
        * answerValueSet = Canonical(SEU_UB_UntersuchungsergebnisVS)
      * item[+] insert addItem(8.42, #boolean, [[Sprechen (Lautbildung, Stottern, Stimme) (1. SÄU)]])
        * insert addSource(#DE-BY)
      * item[+] insert addItem(8.43, #boolean, [[Körperkoordination (1. SÄU)]])
        * insert addSource(#DE-BY)
    * item[+] insert addGroup(8_3_2, Auffälligkeiten aus Entwicklungsscreening sind ärztlich abgeklärt)
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
      * item[+] insert addItem(8.59.a, #boolean, [[Psychotheraphie]])
        * insert addSource(#DE-BE)
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
      * item[+] insert addItemWithSource(8.66a, #choice, [[Rückstellung empfohlen]], #DE-HE)
        * answerValueSet = Canonical(SEU_UB_SchulempfehlungVS)
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
    * item[+] insert addItemWithSource(8.73, #integer, [[Blutdruck systolisch]], #DE-HE)
    * item[+] insert addItemWithSource(8.74, #integer, [[Blutdruck diastolisch]], #DE-HE)
    * item[+] insert addItemWithSource(8.75, #boolean, [[Gab es bei der Untersuchung einen Mehraufwand]], #DE-HE)
    * item[+] insert addItemWithSource(8.76, #choice, [[Art der Untersuchung]], #DE-HE)
      * answerValueSet = Canonical(SEU_UB_EinschulungVS)
    * item[+] insert addGroup(8_3_7, [[psychische Auffälligkeiten (SDQ)]])
      * item[+]
        * insert addItemWithSource(8.77, #string, [[emotionale Probleme]], #DE-BE)
      * item[+]
        * insert addItemWithSource(8.78, #string, [[peer Probleme]], #DE-BE)
      * item[+]
        * insert addItemWithSource(8.79, #string, [[Verhalt.-Probleme]], #DE-BE)
      * item[+]
        * insert addItemWithSource(8.80, #string, [[prosoz. Verhalten]], #DE-BE)
      * item[+]
        * insert addItemWithSource(8.81, #string, [[Hyperaktivität]], #DE-BE)
      * item[+]
          * insert addItemWithSource(8.82, #boolean, [[psychische Auffälligkeiten]], #DE-BE)
      * item[+]
          * insert addItemWithSource(8.83, #boolean, [[in Behandlung oder Diagnostik]], #DE-BE)
      * item[+]
          * insert addItemWithSource(8.84, #boolean, [[zur Diagnostik / Behandlung überwiesen]], #DE-BE)
      * item[+] insert addGroup(8_3_8, [[Entwicklungsdiagnostik / S-ENS + SOPESS]])
        * item[+]
          * insert addItemWithSource(8.85, #integer, [[Körperkoordination]], #DE-BE)
        * item[+]
          * insert addItemWithSource(8.86, #integer, [[Visuomotorik]], #DE-BE)
        * item[+]
          * insert addItemWithSource(8.87, #integer, [[visuelle Wahrnehmung]], #DE-BE)
        * item[+]
          * insert addItemWithSource(8.88, #integer, [[Pseudowörter]], #DE-BE)
        * item[+]
          * insert addItemWithSource(8.89, #integer, [[Wörter ergänzen]], #DE-BE)
        * item[+]
          * insert addItemWithSource(8.90, #integer, [[Sätze nachsprechen]], #DE-BE)
        * item[+]
          * insert addItemWithSource(8.91, #integer, [[Pluralbildung]], #DE-BE)
        * item[+]
          * insert addItemWithSource(8.92, #integer, [[Artikulation]], #DE-BE)
        * item[+]
          * insert addItemWithSource(8.93, #integer, [[Zählen]], #DE-BE)
        * item[+]
          * insert addItemWithSource(8.94, #integer, [[Mengenvorwissen]], #DE-BE)
    * item[+] insert addItemWithSource(8.95, #choice, [[schulische Foerderung empfohlen]], #DE-BE)
      * answerValueSet = Canonical(SchulischeFoerderungEmpfohlenVS)
      * repeats = true
    * item[+] insert addItemWithSource(8.96, #choice, [[sonderpaedagogischer Foerderbedarf]], #DE-BE)
      * answerValueSet = Canonical(SonderpaedagogischerFoerderbedarfVS)
      * repeats = true
    * item[+] insert addItem(8.97, #choice, [[Antrag auf Zurueckstellung]])
      * insert addSource(#DE-BE)
      * answerValueSet = Canonical(AntragAufZurueckstellungVS)
    * item[+] 
      * insert addItemWithSource(8.98, #boolean, [[Einschulung von KJGD befürwortet]], #DE-BE)
	  * item[+] 
      * insert addItemWithSource(8.99, #boolean, [[ggf. 2. ESU erforderlich]], #DE-BE)
	  * item[+]
      * insert addItemWithSource(9.100, #boolean, [[Zurückstellung v. Schulaufsicht erfolgt]], #DE-BE)
		* item[+]
      * insert addItemWithSource(9.101, #boolean, [[Kind hat einen I-Status]], #DE-BE)

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
* ^expansion.timestamp = "2024-10-20T11:50:47+00:00"
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
* ^expansion.timestamp = "2024-10-20T11:50:47+00:00"
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

CodeSystem: SEU_UB_SchulempfehlungCS
Id: seu-ub-schulempfehlung-cs
Title: "SEU_UB_Schulempfehlung CodeSystem"
Description: "CodeSystem für die Angabe von Schulempfehlungen."
* #zurueckstellung_regelkind "Zurückstellung Regelkind"
* #zurueckstellung_eingangsstufenkind "Zurückstellung Eingangsstufenkind"
* #bedenken_gegen_vorzeitige_einschulung "Bedenken gegen vorzeitige Einschulung"
* #beratungs_und_foerderzentrum "Beratungs- und Förderzentrum"

ValueSet: SEU_UB_SchulempfehlungVS
Id: seu-ub-schulempfehlung-vs
Title: "SEU_UB_Schulempfehlung ValueSet"
Description: "ValueSet, das verschiedene Schulempfehlungen enthält."
* include codes from system SEU_UB_SchulempfehlungCS
* ^expansion.timestamp = "2024-10-20T11:50:47+00:00"
* ^expansion.contains[0].system = Canonical(SEU_UB_SchulempfehlungCS)
* ^expansion.contains[=].code = #zurueckstellung_regelkind
* ^expansion.contains[=].display = "Zurückstellung Regelkind"
* ^expansion.contains[+].system = Canonical(SEU_UB_SchulempfehlungCS)
* ^expansion.contains[=].code = #zurueckstellung_eingangsstufenkind
* ^expansion.contains[=].display = "Zurückstellung Eingangsstufenkind"
* ^expansion.contains[+].system = Canonical(SEU_UB_SchulempfehlungCS)
* ^expansion.contains[=].code = #bedenken_gegen_vorzeitige_einschulung
* ^expansion.contains[=].display = "Bedenken gegen vorzeitige Einschulung"
* ^expansion.contains[+].system = Canonical(SEU_UB_SchulempfehlungCS)
* ^expansion.contains[=].code = #beratungs_und_foerderzentrum
* ^expansion.contains[=].display = "Beratungs- und Förderzentrum"

CodeSystem: SEU_UB_EinschulungCS
Id: seu-ub-einschulung-cs
Title: "SEU_UB_Einschulung CodeSystem"
Description: "CodeSystem für die Angabe der Einschulungstypen."
* #regelkind "Regelkind"
* #kannkind "Kannkind"
* #eingangsstufe "Eingangsstufe"

ValueSet: SEU_UB_EinschulungVS
Id: seu-ub-einschulung-vs
Title: "SEU_UB_Einschulung ValueSet"
Description: "ValueSet, das verschiedene Einschulungstypen enthält."
* include codes from system SEU_UB_EinschulungCS
* ^expansion.timestamp = "2024-10-20T11:50:47+00:00"
* ^expansion.contains[0].system = Canonical(SEU_UB_EinschulungCS)
* ^expansion.contains[=].code = #regelkind
* ^expansion.contains[=].display = "Regelkind"
* ^expansion.contains[+].system = Canonical(SEU_UB_EinschulungCS)
* ^expansion.contains[=].code = #kannkind
* ^expansion.contains[=].display = "Kannkind"
* ^expansion.contains[+].system = Canonical(SEU_UB_EinschulungCS)
* ^expansion.contains[=].code = #eingangsstufe
* ^expansion.contains[=].display = "Eingangsstufe"

CodeSystem: SchulischeFoerderungEmpfohlenCS
Id: SchulischeFoerderungEmpfohlenCS
Title: "SchulischeFoerderungEmpfohlenCS"
Description: "SchulischeFoerderungEmpfohlenCS"
* #keine_Foerderung_notwendig  "keine Förderung notwendig"
* #Sprache "Sprache"
* #Visuomotorik "Visuomotorik"
* #visuelle_Wahrnehmung "visuelle_Wahrnehmung"
* #koerperliche_und_motorische_Entwicklung "körperliche und motorische Entwicklung"
* #emotionale_soziale_Entwicklung "emotionale_soziale_Entwicklung"
* #Lernen "Lernen"

ValueSet: SchulischeFoerderungEmpfohlenVS
Id: SchulischeFoerderungEmpfohlenVS
Title: "SchulischeFoerderungEmpfohlenVS"
Description: "SchulischeFoerderungEmpfohlenVS"
* include codes from system SchulischeFoerderungEmpfohlenCS
* ^expansion.timestamp = "2024-03-27T12:20:50+00:00"
* ^expansion.contains[0].system = Canonical(SchulischeFoerderungEmpfohlenCS)
* ^expansion.contains[=].code = #keine_Foerderung_notwendig
* ^expansion.contains[=].display = "keine Förderung notwendig"
* ^expansion.contains[0].system = Canonical(SchulischeFoerderungEmpfohlenCS)
* ^expansion.contains[=].code = #Sprache 
* ^expansion.contains[=].display = "Sprache"
* ^expansion.contains[0].system = Canonical(SchulischeFoerderungEmpfohlenCS)
* ^expansion.contains[=].code = #Visuomotorik 
* ^expansion.contains[=].display = "Visuomotorik"
* ^expansion.contains[0].system = Canonical(SchulischeFoerderungEmpfohlenCS)
* ^expansion.contains[=].code = #visuelle_Wahrnehmung 
* ^expansion.contains[=].display = "visuelle_Wahrnehmung"
* ^expansion.contains[0].system = Canonical(SchulischeFoerderungEmpfohlenCS)
* ^expansion.contains[=].code = #koerperliche_und_motorische_Entwicklung 
* ^expansion.contains[=].display = "körperliche und motorische Entwicklung"
* ^expansion.contains[0].system = Canonical(SchulischeFoerderungEmpfohlenCS)
* ^expansion.contains[=].code = #emotionale_soziale_Entwicklung
* ^expansion.contains[=].display = "emotionale_soziale_Entwicklung"
* ^expansion.contains[0].system = Canonical(SchulischeFoerderungEmpfohlenCS)
* ^expansion.contains[=].code = #Lernen 
* ^expansion.contains[=].display = "Lernen"

CodeSystem: SonderpaedagogischerFoerderbedarfCS
Id: SonderpaedagogischerFoerderbedarfCS
Title: "SonderpaedagogischerFoerderbedarfnCS"
Description: "SonderpaedagogischerFoerderbedarfCS"
* #kein_Antrag_empfohlen  "kein Antrag empfohlen"
* #Sehen "Sehen"
* #Hoeren "Hören"
* #Sprache "Sprache"
* #koerperliche_und_motorische_Entwicklung "körperliche und motorische Entwicklung"
* #geistige_Entwicklung "geistige Entwicklung"
* #autistische_Behinderung "autistische Behinderung"
* #emotional_soziale_Entwicklung "emotional_soziale_Entwicklung"
* #Lernen "Lernen"

ValueSet: SonderpaedagogischerFoerderbedarfVS
Id: SonderpaedagogischerFoerderbedarfVS
Title: "SonderpaedagogischerFoerderbedarfVS"
Description: "SonderpaedagogischerFoerderbedarfVS"
* include codes from system SonderpaedagogischerFoerderbedarfCS
* ^expansion.timestamp = "2024-03-27T12:20:50+00:00"
* ^expansion.contains[0].system = Canonical(SonderpaedagogischerFoerderbedarfCS)
* ^expansion.contains[=].code = #kein_Antrag_empfohlen 
* ^expansion.contains[=].display = "kein Antrag empfohlen"
* ^expansion.contains[0].system = Canonical(SonderpaedagogischerFoerderbedarfCS)
* ^expansion.contains[=].code = #Sehen 
* ^expansion.contains[=].display = "Sehen"
* ^expansion.contains[0].system = Canonical(SonderpaedagogischerFoerderbedarfCS)
* ^expansion.contains[=].code = #Hoeren 
* ^expansion.contains[=].display = "Hören"
* ^expansion.contains[0].system = Canonical(SonderpaedagogischerFoerderbedarfCS)
* ^expansion.contains[=].code = #Sprache
* ^expansion.contains[=].display =  "Sprache"
* ^expansion.contains[0].system = Canonical(SonderpaedagogischerFoerderbedarfCS)
* ^expansion.contains[=].code = #koerperliche_und_motorische_Entwicklung 
* ^expansion.contains[=].display = "körperliche und motorische Entwicklung"
* ^expansion.contains[0].system = Canonical(SonderpaedagogischerFoerderbedarfCS)
* ^expansion.contains[=].code = #geistige_Entwicklung 
* ^expansion.contains[=].display = "geistige Entwicklung"
* ^expansion.contains[0].system = Canonical(SonderpaedagogischerFoerderbedarfCS)
* ^expansion.contains[=].code = #autistische_Behinderung 
* ^expansion.contains[=].display = "autistische Behinderung"
* ^expansion.contains[0].system = Canonical(SonderpaedagogischerFoerderbedarfCS)
* ^expansion.contains[=].code = #emotional_soziale_Entwicklung 
* ^expansion.contains[=].display = "emotional_soziale_Entwicklung"
* ^expansion.contains[0].system = Canonical(SonderpaedagogischerFoerderbedarfCS)
* ^expansion.contains[=].code = #Lernen 
* ^expansion.contains[=].display = "Lernen"

CodeSystem: AntragAufZurueckstellungCS
Id: AntragAufZurueckstellungCS
Title: "AntragAufZurueckstellungCS"
Description: "AntragAufZurueckstellungCS"
* #nein  "nein"
* #ja "ja"
* #wird_erwogen "wird erwogen"
* #keine_Angabe "keine Angabe"

ValueSet: AntragAufZurueckstellungVS
Id: AntragAufZurueckstellungVS
Title: "AntragAufZurueckstellungVS"
Description: "AntragAufZurueckstellungVS"
* include codes from system AntragAufZurueckstellungCS
* ^expansion.timestamp = "2024-03-27T12:20:50+00:00"
* ^expansion.contains[0].system = Canonical(AntragAufZurueckstellungCS)
* ^expansion.contains[=].code = #nein  
* ^expansion.contains[=].display = "nein"
* ^expansion.contains[0].system = Canonical(AntragAufZurueckstellungCS)
* ^expansion.contains[=].code = #ja 
* ^expansion.contains[=].display = "ja"
* ^expansion.contains[0].system = Canonical(AntragAufZurueckstellungCS)
* ^expansion.contains[=].code = #wird_erwogen 
* ^expansion.contains[=].display = "wird erwogen" 
* ^expansion.contains[0].system = Canonical(AntragAufZurueckstellungCS)
* ^expansion.contains[=].code = #keine_Angabe 
* ^expansion.contains[=].display = "keine Angabe"