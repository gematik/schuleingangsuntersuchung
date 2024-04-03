RuleSet: 7-af-fdsscreening
* item[+] insert addGroup(7, Befunde aus dem FdS-Screening)
  * item[+] insert addGroup(7_1, 1. Screening)
    * item[+] insert addGroup(7_1_1, Für Eingabe in der Untersuchung etwas erfassen) //Bildet das in der Excel beschriebe ab, aber finde ich grenzwertig... deshalb habe ich die optionalen ReadOnly gesetzt
      * insert EnableWhenBoolean(7.3, exists, false)
      * insert EnableWhenBoolean(7.3, exists, false)
      * insert EnableWhenBoolean(7.4, exists, false)
      * insert EnableWhenBoolean(7.5, exists, false)
      * insert EnableWhenBoolean(7.6, exists, false)
      * insert EnableWhenBoolean(7.7, exists, false)
      * insert EnableWhenBoolean(7.8, exists, false)
      * insert EnableWhenBoolean(7.9, exists, false)
      * insert EnableWhenBoolean(7.10, exists, false)
      * insert EnableWhenBoolean(7.11, exists, false)
      * insert EnableWhenBoolean(7.12, exists, false)
      * insert EnableWhenBoolean(7.13, exists, false)
      * insert EnableWhenBoolean(7.14, exists, false)
      * insert EnableWhenBoolean(7.15, exists, false)
      * insert EnableWhenBoolean(7.16, exists, false)
      * insert EnableWhenBoolean(7.17, exists, false)
      * insert EnableWhenBoolean(7.18, exists, false)
      * insert EnableWhenBoolean(7.19, exists, false)
      * insert EnableWhenBoolean(7.20, exists, false)
      * insert EnableWhenBoolean(7.21, exists, false)
      * insert EnableWhenBoolean(7.22, exists, false)
      * insert EnableWhenBoolean(7.23, exists, false)
      * insert EnableWhenBoolean(7.24, exists, false)
      * insert EnableWhenBoolean(7.25, exists, false)
      * insert EnableWhenBoolean(7.26, exists, false)
      * insert EnableWhenBoolean(7.27, exists, false)
      * insert EnableWhenBoolean(7.28, exists, false)
      * insert EnableWhenBoolean(7.29, exists, false)
      * insert EnableWhenBoolean(7.30, exists, false)
      * enableBehavior = #all
      * item[+] insert addItem(7.1, #date, [[Untersuchungsdatum]])
        * readOnly = true
      * item[+] insert addItem(7.2, #choice, [[Heutige Untersuchung]])
        * readOnly = true
        * answerValueSet = Canonical(SEU-AF-UntersuchungsstatusFdSScreeningvS)
    * item[+] insert addGroup(7_1_1, Verpflichtend)
      * insert EnableWhenBoolean(7.3, exists, true)
      * insert EnableWhenBoolean(7.3, exists, true)
      * insert EnableWhenBoolean(7.4, exists, true)
      * insert EnableWhenBoolean(7.5, exists, true)
      * insert EnableWhenBoolean(7.6, exists, true)
      * insert EnableWhenBoolean(7.7, exists, true)
      * insert EnableWhenBoolean(7.8, exists, true)
      * insert EnableWhenBoolean(7.9, exists, true)
      * insert EnableWhenBoolean(7.10, exists, true)
      * insert EnableWhenBoolean(7.11, exists, true)
      * insert EnableWhenBoolean(7.12, exists, true)
      * insert EnableWhenBoolean(7.13, exists, true)
      * insert EnableWhenBoolean(7.14, exists, true)
      * insert EnableWhenBoolean(7.15, exists, true)
      * insert EnableWhenBoolean(7.16, exists, true)
      * insert EnableWhenBoolean(7.17, exists, true)
      * insert EnableWhenBoolean(7.18, exists, true)
      * insert EnableWhenBoolean(7.19, exists, true)
      * insert EnableWhenBoolean(7.20, exists, true)
      * insert EnableWhenBoolean(7.21, exists, true)
      * insert EnableWhenBoolean(7.22, exists, true)
      * insert EnableWhenBoolean(7.23, exists, true)
      * insert EnableWhenBoolean(7.24, exists, true)
      * insert EnableWhenBoolean(7.25, exists, true)
      * insert EnableWhenBoolean(7.26, exists, true)
      * insert EnableWhenBoolean(7.27, exists, true)
      * insert EnableWhenBoolean(7.28, exists, true)
      * insert EnableWhenBoolean(7.29, exists, true)
      * insert EnableWhenBoolean(7.30, exists, true)
      * enableBehavior = #any
      * item[+] insert addRItem(7.1, #date, [[Untersuchungsdatum]]) //TODO Validierung >2022
      * item[+] insert addRItem(7.2, #choice, [[Heutige Untersuchung]]) 
        * answerValueSet = Canonical(SEU-AF-UntersuchungsstatusFdSScreeningvS)
    * item[+] insert addItem(7.3, #integer, [[gemessene Körpergröße (in cm)]])
      * insert uunit(cm, "cm")
    * item[+] insert addItem(7.4, #decimal, [[gemessenes Körpergewicht (in kg)]])
      * insert uunit(kg, "kg")
    * item[+] insert addItem(7.5, #boolean, [[Sehtest mit Brille]])
    * item[+] insert addItem(7.6, #choice, [[Lang-Test auffällig]])
      * answerValueSet = Canonical(SEU-AF-AntwortAuffaelligkeitBeurteilbarVS)
    * item[+] insert addItem(7.7, #choice, [[Sehschärfendifferenz auffällig]])
      * answerValueSet = Canonical(SEU-AF-AntwortAuffaelligkeitBeurteilbarVS)
    * item[+] insert addItem(7.8, #choice, [[Visus Ferne auffällig (Gerät, Rechts)]])
      * answerValueSet = Canonical(SEU-AF-AntwortAuffaelligkeitBeurteilbarVS)
    * item[+] insert addItem(7.9, #choice, [[Visus Ferne auffällig (Gerät, Links)]])
      * answerValueSet = Canonical(SEU-AF-AntwortAuffaelligkeitBeurteilbarVS)
    * item[+] insert addItem(7.10, #choice, [[Visus Ferne auffällig (LEA-Tafeln, Rechts)]])
      * answerValueSet = Canonical(SEU-AF-AntwortAuffaelligkeitBeurteilbarVS)
    * item[+] insert addItem(7.11, #choice, [[Visus Ferne auffällig (LEA-Tafeln, Links)]])
      * answerValueSet = Canonical(SEU-AF-AntwortAuffaelligkeitBeurteilbarVS)
    * item[+] insert addItem(7.12, #boolean, [[akuter Infekt obere Atemwege liegt vor]])
    * item[+] insert addItem(7.13, #choice, [[Hörtest auffällig (Rechts)]])
      * answerValueSet = Canonical(SEU-AF-AntwortAuffaelligkeitBeurteilbarVS)
    * item[+] insert addItem(7.14, #choice, [[Hörtest auffällig (Links)]])
      * answerValueSet = Canonical(SEU-AF-AntwortAuffaelligkeitBeurteilbarVS)
    * item[+] insert addItem(7.15, #choice, [[Visuomotorik auffällig]])
      * answerValueSet = Canonical(SEU-AF-AntwortAuffaelligkeitBeurteilbarVS)
    * item[+] insert addItem(7.16, #choice, [[Mengenvorwissen auffällig]])
      * answerValueSet = Canonical(SEU-AF-AntwortAuffaelligkeitBeurteilbarVS)
    * item[+] insert addItem(7.17, #choice, [[Zählen auffällig]])
      * answerValueSet = Canonical(SEU-AF-AntwortAuffaelligkeitBeurteilbarVS)
    * item[+] insert addItem(7.18, #boolean, [[Keine ausreichenden Deutschkenntnisse vorhanden]])
    * item[+] insert addItem(7.19, #choice, [[Sprachverständnis auffällig]])
      * answerValueSet = Canonical(SEU-AF-AntwortAuffaelligkeitVS)
    * item[+] insert addItem(7.20, #choice, [[Lautbildung auffällig]])
      * answerValueSet = Canonical(SEU-AF-AntwortAuffaelligkeitVS)
    * item[+] insert addItem(7.21, #boolean, [[Kind stottert mehr als 6 Monate]])
    * item[+] insert addItem(7.22, #boolean, [[Stimme erscheint extrem auffällig über mehr als 3 Monate]])
    * item[+] insert addItem(7.23, #choice, [[Sprache (\"Kernaufgaben\") auffällig]])
      * answerValueSet = Canonical(SEU-AF-AntwortAuffaelligkeitVS)
    * item[+] insert addItem(7.24, #choice, [[Visuelle Wahrnehmung (Züge)]])
      * answerValueSet = Canonical(SEU-AF-AntwortAuffaelligkeitBeurteilbarVS)
    * item[+] insert addItem(7.25, #choice, [[Grobmotorik auffällig]])
      * answerValueSet = Canonical(SEU-AF-AntwortAuffaelligkeitBeurteilbarVS)
    * item[+] insert addItem(7.26, #choice, [[Formen zeichnen auffällig - Kreis]])
      * answerValueSet = Canonical(SEU-AF-AntwortAuffaelligkeitBeurteilbarVS)
    * item[+] insert addItem(7.27, #choice, [[Formen zeichnen auffällig - Quadrat]])
      * answerValueSet = Canonical(SEU-AF-AntwortAuffaelligkeitBeurteilbarVS)
    * item[+] insert addItem(7.28, #choice, [[Formen zeichnen auffällig - Dreieck]])
      * answerValueSet = Canonical(SEU-AF-AntwortAuffaelligkeitBeurteilbarVS)
    * item[+] insert addItem(7.29, #choice, [[Formen zeichnen auffällig - Raute]])
      * answerValueSet = Canonical(SEU-AF-AntwortAuffaelligkeitBeurteilbarVS)
    * item[+] insert addItem(7.30, #string, [[Anmerkungen, intern]])
  * item[+] insert addGroup(7_2, 2. Screening)
    * item[+] insert addItem(7.31, #date, [[Untersuchungsdatum]])
    * item[+] insert addGroup(7_2_1, Untersuchung 2. Screening)
      * insert EnableWhenBoolean(7.31, exists, true)
      * item[+] insert addItem(7.32, #choice, [[Heutige Untersuchung]])
        * answerValueSet = Canonical(SEU-AF-UntersuchungsstatusFdSScreeningvS)
      * item[+] insert addItem(7.33, #integer, [[gemessene Körpergröße (in cm)]])
        * insert uunit(cm, "cm")
      * item[+] insert addItem(7.34, #decimal, [[gemessenes Körpergewicht (in kg)]])
        * insert uunit(kg, "kg")
      * item[+] insert addItem(7.35, #boolean, [[Sehtest mit Brille]])
      * item[+] insert addItem(7.36, #choice, [[Lang-Test auffällig]])
        * answerValueSet = Canonical(SEU-AF-AntwortAuffaelligkeitBeurteilbarVS)
      * item[+] insert addItem(7.37, #choice, [[Sehschärfendifferenz auffällig]])
        * answerValueSet = Canonical(SEU-AF-AntwortAuffaelligkeitBeurteilbarVS)
      * item[+] insert addItem(7.38, #choice, [[Visus Ferne auffällig (Gerät, Rechts)]])
        * answerValueSet = Canonical(SEU-AF-AntwortAuffaelligkeitBeurteilbarVS)
      * item[+] insert addItem(7.39, #choice, [[Visus Ferne auffällig (Gerät, Links)]])
        * answerValueSet = Canonical(SEU-AF-AntwortAuffaelligkeitBeurteilbarVS)
      * item[+] insert addItem(7.40, #choice, [[Visus Ferne auffällig (LEA-Tafeln, Rechts)]])
        * answerValueSet = Canonical(SEU-AF-AntwortAuffaelligkeitBeurteilbarVS)
      * item[+] insert addItem(7.41, #choice, [[Visus Ferne auffällig (LEA-Tafeln, Links)]])
        * answerValueSet = Canonical(SEU-AF-AntwortAuffaelligkeitBeurteilbarVS)
      * item[+] insert addItem(7.42, #boolean, [[akuter Infekt obere Atemwege liegt vor]])
      * item[+] insert addItem(7.43, #choice, [[Hörtest auffällig (Rechts)]])
        * answerValueSet = Canonical(SEU-AF-AntwortAuffaelligkeitBeurteilbarVS)
      * item[+] insert addItem(7.44, #choice, [[Hörtest auffällig (Links)]])
        * answerValueSet = Canonical(SEU-AF-AntwortAuffaelligkeitBeurteilbarVS)
      * item[+] insert addItem(7.45, #choice, [[Visuomotorik auffällig]])
        * answerValueSet = Canonical(SEU-AF-AntwortAuffaelligkeitBeurteilbarVS)
      * item[+] insert addItem(7.46, #choice, [[Mengenvorwissen auffällig]])
        * answerValueSet = Canonical(SEU-AF-AntwortAuffaelligkeitBeurteilbarVS)
      * item[+] insert addItem(7.47, #choice, [[Zählen auffällig]])
        * answerValueSet = Canonical(SEU-AF-AntwortAuffaelligkeitBeurteilbarVS)
      * item[+] insert addItem(7.48, #boolean, [[Keine ausreichenden Deutschkenntnisse vorhanden]])
      * item[+] insert addItem(7.49, #choice, [[Sprachverständnis auffällig]])
        * answerValueSet = Canonical(SEU-AF-AntwortAuffaelligkeitVS)
      * item[+] insert addItem(7.50, #choice, [[Lautbildung auffällig]])
        * answerValueSet = Canonical(SEU-AF-AntwortAuffaelligkeitVS)
      * item[+] insert addItem(7.51, #boolean, [[Kind stottert mehr als 6 Monate]])
      * item[+] insert addItem(7.52, #boolean, [[Stimme erscheint extrem auffällig über mehr als 3 Monate]])
      * item[+] insert addItem(7.53, #choice, [[Sprache (\"Kernaufgaben\") auffällig]])
        * answerValueSet = Canonical(SEU-AF-AntwortAuffaelligkeitVS)
      * item[+] insert addItem(7.54, #choice, [[Visuelle Wahrnehmung (Züge)]])
        * answerValueSet = Canonical(SEU-AF-AntwortAuffaelligkeitBeurteilbarVS)
      * item[+] insert addItem(7.55, #choice, [[Grobmotorik auffällig]])
        * answerValueSet = Canonical(SEU-AF-AntwortAuffaelligkeitBeurteilbarVS)
      * item[+] insert addItem(7.56, #choice, [[Formen zeichnen auffällig - Kreis]])
        * answerValueSet = Canonical(SEU-AF-AntwortAuffaelligkeitBeurteilbarVS)
      * item[+] insert addItem(7.57, #choice, [[Formen zeichnen auffällig - Quadrat]])
        * answerValueSet = Canonical(SEU-AF-AntwortAuffaelligkeitBeurteilbarVS)
      * item[+] insert addItem(7.58, #choice, [[Formen zeichnen auffällig - Dreieck]])
        * answerValueSet = Canonical(SEU-AF-AntwortAuffaelligkeitBeurteilbarVS)
      * item[+] insert addItem(7.59, #choice, [[Formen zeichnen auffällig - Raute]])
        * answerValueSet = Canonical(SEU-AF-AntwortAuffaelligkeitBeurteilbarVS)
      * item[+] insert addItem(7.60, #string, [[Anmerkungen, intern]])



CodeSystem: SEU-AF-UntersuchungsstatusFdSScreeningCS
Id: SEU-AF-UntersuchungsstatusFdSScreeningCS
Title: "SEU Untersuchungsstatus FdS-Screening"
* #1 "Erstuntersuchung"
* #2 "Wiederholung"
* #3 "nicht bekannt"
* #4 "Screening fand nicht statt"
* #5 "Screening nicht möglich, Kind verweigert"
* #6 "Screening nicht möglich, keine Dt-Kenntnisse"
* #7 "Screening entfällt, gem. §8 SchulgespflV"

ValueSet: SEU-AF-UntersuchungsstatusFdSScreeningvS
Id: SEU-AF-UntersuchungsstatusFdSScreeningVS
Title: "SEU Untersuchungsstatus FdS-Screening"
Description: "Diese Codes enthalten Statusangaben über ein FdS-Screening"
* include codes from system SEU-AF-UntersuchungsstatusFdSScreeningCS
* ^expansion.contains[+].system = Canonical(SEU-AF-UntersuchungsstatusFdSScreeningCS)
* ^expansion.contains[=].code = #1
* ^expansion.contains[=].display = "Erstuntersuchung"
* ^expansion.contains[+].system = Canonical(SEU-AF-UntersuchungsstatusFdSScreeningCS)
* ^expansion.contains[=].code = #2
* ^expansion.contains[=].display = "Wiederholung"
* ^expansion.contains[+].system = Canonical(SEU-AF-UntersuchungsstatusFdSScreeningCS)
* ^expansion.contains[=].code = #3
* ^expansion.contains[=].display = "nicht bekannt"
* ^expansion.contains[+].system = Canonical(SEU-AF-UntersuchungsstatusFdSScreeningCS)
* ^expansion.contains[=].code = #4
* ^expansion.contains[=].display = "Screening fand nicht statt"
* ^expansion.contains[+].system = Canonical(SEU-AF-UntersuchungsstatusFdSScreeningCS)
* ^expansion.contains[=].code = #5
* ^expansion.contains[=].display = "Screening nicht möglich, Kind verweigert"
* ^expansion.contains[+].system = Canonical(SEU-AF-UntersuchungsstatusFdSScreeningCS)
* ^expansion.contains[=].code = #6
* ^expansion.contains[=].display = "Screening nicht möglich, keine Dt-Kenntnisse"
* ^expansion.contains[+].system = Canonical(SEU-AF-UntersuchungsstatusFdSScreeningCS)
* ^expansion.contains[=].code = #7
* ^expansion.contains[=].display = "Screening entfällt, gem. §8 SchulgespflV"

CodeSystem: SEU-AF-AntwortAuffaelligkeitCS
Id: SEU-AF-AntwortAuffaelligkeitCS
Title: "SEU Antwort Auffälligkeit"
* #1 "ja"
* #2 "nein"
* #3 "nicht beurteilbar"
* #8 "Untersuchung nicht möglich"
* #9 "Untersuchung nicht durchgeführt"

ValueSet: SEU-AF-AntwortAuffaelligkeitVS
Id: SEU-AF-AntwortAuffaelligkeitVS
Title: "SEU Antwort Auffälligkeit"
Description: "Diese Codes enthalten Antwortmöglichkeiten zu Auffälligkeiten"
* include codes from system SEU-AF-AntwortAuffaelligkeitCS
* ^expansion.contains[+].system = Canonical(SEU-AF-AntwortAuffaelligkeitVS)
* ^expansion.contains[=].code = #1
* ^expansion.contains[=].display = "ja"
* ^expansion.contains[+].system = Canonical(SEU-AF-AntwortAuffaelligkeitVS)
* ^expansion.contains[=].code = #2
* ^expansion.contains[=].display = "nein"
* ^expansion.contains[+].system = Canonical(SEU-AF-AntwortAuffaelligkeitVS)
* ^expansion.contains[=].code = #3
* ^expansion.contains[=].display = "nicht beurteilbar"
* ^expansion.contains[+].system = Canonical(SEU-AF-AntwortAuffaelligkeitVS)
* ^expansion.contains[=].code = #8
* ^expansion.contains[=].display = "Untersuchung nicht möglich"
* ^expansion.contains[+].system = Canonical(SEU-AF-AntwortAuffaelligkeitVS)
* ^expansion.contains[=].code = #9
* ^expansion.contains[=].display = "Untersuchung nicht durchgeführt"

ValueSet: SEU-AF-AntwortAuffaelligkeitBeurteilbarVS
Id: SEU-AF-AntwortAuffaelligkeitBeurteilbarVS
Title: "SEU Antwort Auffälligkeit aber beurteilbar"
Description: "Diese Codes enthalten Antwortmöglichkeiten zu Auffälligkeiten ohne Code 3 'nicht beurteilbar'"
* SEU-AF-AntwortAuffaelligkeitCS#1 "ja"
* SEU-AF-AntwortAuffaelligkeitCS#2 "nein"
* SEU-AF-AntwortAuffaelligkeitCS#8 "Untersuchung nicht möglich"
* SEU-AF-AntwortAuffaelligkeitCS#9 "Untersuchung nicht durchgeführt"
* ^expansion.contains[+].system = Canonical(SEU-AF-AntwortAuffaelligkeitVS)
* ^expansion.contains[=].code = #1
* ^expansion.contains[=].display = "ja"
* ^expansion.contains[+].system = Canonical(SEU-AF-AntwortAuffaelligkeitVS)
* ^expansion.contains[=].code = #2
* ^expansion.contains[=].display = "nein"
* ^expansion.contains[+].system = Canonical(SEU-AF-AntwortAuffaelligkeitVS)
* ^expansion.contains[=].code = #8
* ^expansion.contains[=].display = "Untersuchung nicht möglich"
* ^expansion.contains[+].system = Canonical(SEU-AF-AntwortAuffaelligkeitVS)
* ^expansion.contains[=].code = #9
* ^expansion.contains[=].display = "Untersuchung nicht durchgeführt"
