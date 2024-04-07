RuleSet: 3-af-impfungen
* item[+] insert addGroup(3, Impfungen)
  * item[+] insert addItem(3.1, #boolean, [[Impfbuch vorgelegt]])
  * item[+] insert addItem(3.2, #boolean, [[alle Impfungen werden abgelehnt oder sind nicht möglich]])
  * item[+] insert addGroup(3_1, Abfrage Impfungen)
    * insert EnableWhenBoolean(3.1, =, true)
    * insert EnableWhenBoolean(3.2, !=, true)
    * enableBehavior = #all
    * item[+] insert addItem(3.3, #choice, [[Tetanus]])
      * answerValueSet = Canonical(SEU-AF-ImpfungAntwortVS)
    * item[+] insert addItem(3.4, #choice, [[Diphtherie]])
      * answerValueSet = Canonical(SEU-AF-ImpfungAntwortVS)
    * item[+] insert addItem(3.5, #choice, [[Pertussis]])
      * answerValueSet = Canonical(SEU-AF-ImpfungAntwortVS)
    * item[+] insert addItem(3.6, #choice, [[IPV]])
      * answerValueSet = Canonical(SEU-AF-ImpfungAntwortOhneAuffrischungVS)
    * item[+] insert addItem(3.7, #choice, [[HIB]])
      * answerValueSet = Canonical(SEU-AF-ImpfungAntwortOhneAuffrischungVS)
    * item[+] insert addItem(3.8, #choice, [[Hepatitis B]])
      * answerValueSet = Canonical(SEU-AF-ImpfungAntwortOhneAuffrischungVS)
    * item[+] insert addItem(3.9, #choice, [[Masern]])
      * answerValueSet = Canonical(SEU-AF-ImpfungAntwortOhneAuffrischungVS)
    * item[+] insert addItem(3.10, #choice, [[Mumps]])
      * answerValueSet = Canonical(SEU-AF-ImpfungAntwortOhneAuffrischungVS)
    * item[+] insert addItem(3.11, #choice, [[Röteln]])
      * answerValueSet = Canonical(SEU-AF-ImpfungAntwortOhneAuffrischungVS)
    * item[+] insert addItem(3.12, #choice, [[Varizellen]])
      * answerValueSet = Canonical(SEU-AF-ImpfungAntwortOhneAuffrischungVS)
    * item[+] insert addItem(3.13, #choice, [[Meningokokken]])
      * answerValueSet = Canonical(SEU-AF-ImpfungAntwortOhneAuffrischungVS)
    * item[+] insert addItem(3.14, #choice, [[Pneumokokken]])
      * answerValueSet = Canonical(SEU-AF-ImpfungAntwortOhneAuffrischungVS)
    * item[+] insert addItem(3.15, #choice, [[FSME]])
      * answerValueSet = Canonical(SEU-AF-ImpfungAntwortVS)
    * item[+] insert addItem(3.16, #choice, [[Rotaviren]])
      * answerValueSet = Canonical(SEU-AF-ImpfungAntwortOhneAuffrischungVS)
  * item[+] insert addGroup(3_1, Abfrage Impfungen - abgelent)
    * insert EnableWhenBoolean(3.2, =, true)
    * readOnly = true
    * item[+] insert addItem(3.3, #choice, [[Tetanus]])
      * answerValueSet = Canonical(SEU-AF-ImpfungAntwortVS)
      * initial.valueCoding = SEU-AF-ImpfungAntwortCS#0
      * readOnly = true
    * item[+] insert addItem(3.4, #choice, [[Diphtherie]])
      * answerValueSet = Canonical(SEU-AF-ImpfungAntwortVS)
      * initial.valueCoding = SEU-AF-ImpfungAntwortCS#0
      * readOnly = true
    * item[+] insert addItem(3.5, #choice, [[Pertussis]])
      * answerValueSet = Canonical(SEU-AF-ImpfungAntwortVS)
      * initial.valueCoding = SEU-AF-ImpfungAntwortCS#0
      * readOnly = true
    * item[+] insert addItem(3.6, #choice, [[IPV]])
      * answerValueSet = Canonical(SEU-AF-ImpfungAntwortOhneAuffrischungVS)
      * initial.valueCoding = SEU-AF-ImpfungAntwortCS#0
      * readOnly = true
    * item[+] insert addItem(3.7, #choice, [[HIB]])
      * answerValueSet = Canonical(SEU-AF-ImpfungAntwortOhneAuffrischungVS)
      * initial.valueCoding = SEU-AF-ImpfungAntwortCS#0
      * readOnly = true
    * item[+] insert addItem(3.8, #choice, [[Hepatitis B]])
      * answerValueSet = Canonical(SEU-AF-ImpfungAntwortOhneAuffrischungVS)
      * initial.valueCoding = SEU-AF-ImpfungAntwortCS#0
      * readOnly = true
    * item[+] insert addItem(3.9, #choice, [[Masern]])
      * answerValueSet = Canonical(SEU-AF-ImpfungAntwortOhneAuffrischungVS)
      * initial.valueCoding = SEU-AF-ImpfungAntwortCS#0
      * readOnly = true
    * item[+] insert addItem(3.10, #choice, [[Mumps]])
      * answerValueSet = Canonical(SEU-AF-ImpfungAntwortOhneAuffrischungVS)
      * initial.valueCoding = SEU-AF-ImpfungAntwortCS#0
      * readOnly = true
    * item[+] insert addItem(3.11, #choice, [[Röteln]])
      * answerValueSet = Canonical(SEU-AF-ImpfungAntwortOhneAuffrischungVS)
      * initial.valueCoding = SEU-AF-ImpfungAntwortCS#0
      * readOnly = true
    * item[+] insert addItem(3.12, #choice, [[Varizellen]])
      * answerValueSet = Canonical(SEU-AF-ImpfungAntwortOhneAuffrischungVS)
      * initial.valueCoding = SEU-AF-ImpfungAntwortCS#0
      * readOnly = true
    * item[+] insert addItem(3.13, #choice, [[Meningokokken]])
      * answerValueSet = Canonical(SEU-AF-ImpfungAntwortOhneAuffrischungVS)
      * initial.valueCoding = SEU-AF-ImpfungAntwortCS#0
      * readOnly = true
    * item[+] insert addItem(3.14, #choice, [[Pneumokokken]])
      * answerValueSet = Canonical(SEU-AF-ImpfungAntwortOhneAuffrischungVS)
      * initial.valueCoding = SEU-AF-ImpfungAntwortCS#0
      * readOnly = true
    * item[+] insert addItem(3.15, #choice, [[FSME]])
      * answerValueSet = Canonical(SEU-AF-ImpfungAntwortVS)
      * initial.valueCoding = SEU-AF-ImpfungAntwortCS#0
      * readOnly = true
    * item[+] insert addItem(3.16, #choice, [[Rotaviren]])
      * answerValueSet = Canonical(SEU-AF-ImpfungAntwortOhneAuffrischungVS)
      * initial.valueCoding = SEU-AF-ImpfungAntwortCS#0
      * readOnly = true
  * item[+] insert addItem(3.17, #boolean, [[Immunität gegen Varizellen aufgrund durchgemachter Varizellenerkrankung]])
  * item[+] insert addGroup(3_2, Kontraindikation für Masernimpfung)
    * item[+] insert addItem(3.18, #choice, [[Masernimpfung nicht erforderlich (ärztl. bestätigt), da]])
      * answerValueSet = Canonical(SEU-AF-MasernimpfungNichtErforderlichGrundVS)


CodeSystem:  SEU-AF-MasernimpfungNichtErforderlichGrundCS
Id: SEU-AF-MasernimpfungNichtErforderlichGrundCS
Title: "SEU Masernimpfung nicht erforderlich Grund"
* #1  "Antikörpertiter gegen Masern ausreichend"
* #2  "Masernerkrankung durchgemacht wurde"
* #3  "med. Kontraindikation dauerhaft besteht"
* #4  "Bescheinigung von anderer Behörde vorliegt"

ValueSet: SEU-AF-MasernimpfungNichtErforderlichGrundVS
Id: SEU-AF-MasernimpfungNichtErforderlichGrundVS
Title: "SEU Masernimpfung nicht erforderlich Grund"
Description: "Diese Codes enthalten Angaben zum Grund, warum die Masernimpfung nicht erforderlich ist"
* include codes from system SEU-AF-MasernimpfungNichtErforderlichGrundCS
* ^expansion.contains[+].system = Canonical(SEU-AF-MasernimpfungNichtErforderlichGrundCS)
* ^expansion.contains[=].code = #1
* ^expansion.contains[=].display = "Antikörpertiter gegen Masern ausreichend"
* ^expansion.contains[+].system = Canonical(SEU-AF-MasernimpfungNichtErforderlichGrundCS)
* ^expansion.contains[=].code = #2
* ^expansion.contains[=].display = "Masernerkrankung durchgemacht wurde"
* ^expansion.contains[+].system = Canonical(SEU-AF-MasernimpfungNichtErforderlichGrundCS)
* ^expansion.contains[=].code = #3
* ^expansion.contains[=].display = "med. Kontraindikation dauerhaft besteht"
* ^expansion.contains[+].system = Canonical(SEU-AF-MasernimpfungNichtErforderlichGrundCS)
* ^expansion.contains[=].code = #4
* ^expansion.contains[=].display = "Bescheinigung von anderer Behörde vorliegt"


CodeSystem:  SEU-AF-ImpfungAntwortCS
Id: SEU-AF-ImpfungAntwortCS
Title: "SEU Impfung Antwort"
* #0  "keine Impfung"
* #1  "Grundimmunisierung unvollständig"
* #2  "Grundimmunisierung abgeschlossen (ohne Auffrischung)"
* #3  "Grundimmunisierung abgeschlossen und 1+ Auffrischung"

ValueSet: SEU-AF-ImpfungAntwortVS
Id: SEU-AF-ImpfungAntwortVS
Title: "SEU Impfung Antwort"
Description: "Diese Codes enthalten allgemeine Angaben über den Status einer Impfung"
* include codes from system SEU-AF-ImpfungAntwortCS
* ^expansion.timestamp = "2024-03-30T13:28:00+00:00"
* ^expansion.contains[+].system = Canonical(SEU-AF-ImpfungAntwortCS)
* ^expansion.contains[=].code = #0
* ^expansion.contains[=].display = "keine Impfung"
* ^expansion.contains[+].system = Canonical(SEU-AF-ImpfungAntwortCS)
* ^expansion.contains[=].code = #1
* ^expansion.contains[=].display = "Grundimmunisierung unvollständig"
* ^expansion.contains[+].system = Canonical(SEU-AF-ImpfungAntwortCS)
* ^expansion.contains[=].code = #2
* ^expansion.contains[=].display = "Grundimmunisierung abgeschlossen (ohne Auffrischung)"
* ^expansion.contains[+].system = Canonical(SEU-AF-ImpfungAntwortCS)
* ^expansion.contains[=].code = #3
* ^expansion.contains[=].display = "Grundimmunisierung abgeschlossen und 1+ Auffrischung"

ValueSet: SEU-AF-ImpfungAntwortOhneAuffrischungVS
Id: SEU-AF-ImpfungAntwortOhneAuffrischungVS
Title: "SEU Impfung Antwort ohne Auffrischung"
Description: "Diese Codes enthalten allgemeine Angaben über den Status einer Impfung ohne die Möglichkeit zur Angave der 1+ Auffrischung"
* SEU-AF-ImpfungAntwortCS#0 "keine Impfung"
* SEU-AF-ImpfungAntwortCS#0 "Grundimmunisierung unvollständig"
* SEU-AF-ImpfungAntwortCS#2 "Grundimmunisierung abgeschlossen (ohne Auffrischung)"
* ^expansion.timestamp = "2024-03-30T13:28:00+00:00"
* ^expansion.contains[+].system = Canonical(SEU-AF-ImpfungAntwortCS)
* ^expansion.contains[=].code = #0
* ^expansion.contains[=].display = "keine Impfung"
* ^expansion.contains[+].system = Canonical(SEU-AF-ImpfungAntwortCS)
* ^expansion.contains[=].code = #1
* ^expansion.contains[=].display = "Grundimmunisierung unvollständig"
* ^expansion.contains[+].system = Canonical(SEU-AF-ImpfungAntwortCS)
* ^expansion.contains[=].code = #2
* ^expansion.contains[=].display = "Grundimmunisierung abgeschlossen (ohne Auffrischung)"