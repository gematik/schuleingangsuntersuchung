RuleSet: 3-af-impfungen
* item[+] insert addGroup(3, Impfungen)
  * item[+] insert addItem(3.1, #boolean, [[Impfbuch vorgelegt]])
    * insert addSource(#DE-BY)
  * item[+] insert addItem(3.2, #boolean, [[alle Impfungen werden abgelehnt oder sind nicht möglich]])
    * insert addSource(#DE-BY)
  * item[+] insert addGroup(3_1, Abfrage Impfungen)
    * insert addSource(#DE-BY)
    * insert EnableWhenBoolean(3.1, =, true)
    * insert EnableWhenBoolean(3.2, !=, true)
    * enableBehavior = #all
    * item[+] insert addItem(3.3, #choice, [[Tetanus]])
      * insert addSource(#DE-BY)
      * answerValueSet = Canonical(SEU-AF-ImpfungAntwortVS)
    * item[+] insert addItem(3.4, #choice, [[Diphtherie]])
      * insert addSource(#DE-BY)
      * answerValueSet = Canonical(SEU-AF-ImpfungAntwortVS)
    * item[+] insert addItem(3.5, #choice, [[Pertussis]])
      * insert addSource(#DE-BY)
      * answerValueSet = Canonical(SEU-AF-ImpfungAntwortVS)
    * item[+] insert addItem(3.6, #choice, [[IPV]])
      * insert addSource(#DE-BY)
      * answerValueSet = Canonical(SEU-AF-ImpfungAntwortOhneAuffrischungVS)
    * item[+] insert addItem(3.7, #choice, [[HIB]])
      * insert addSource(#DE-BY)
      * answerValueSet = Canonical(SEU-AF-ImpfungAntwortOhneAuffrischungVS)
    * item[+] insert addItem(3.8, #choice, [[Hepatitis B]])
      * insert addSource(#DE-BY)
      * answerValueSet = Canonical(SEU-AF-ImpfungAntwortOhneAuffrischungVS)
    * item[+] insert addItem(3.9, #choice, [[Masern]])
      * insert addSource(#DE-BY)
      * answerValueSet = Canonical(SEU-AF-ImpfungAntwortOhneAuffrischungVS)
    * item[+] insert addItem(3.10, #choice, [[Mumps]])
      * insert addSource(#DE-BY)
      * answerValueSet = Canonical(SEU-AF-ImpfungAntwortOhneAuffrischungVS)
    * item[+] insert addItem(3.11, #choice, [[Röteln]])
      * insert addSource(#DE-BY)
      * answerValueSet = Canonical(SEU-AF-ImpfungAntwortOhneAuffrischungVS)
    * item[+] insert addItem(3.12, #choice, [[Varizellen]])
      * insert addSource(#DE-BY)
      * answerValueSet = Canonical(SEU-AF-ImpfungAntwortOhneAuffrischungVS)
    * item[+] insert addItem(3.13, #choice, [[Meningokokken]])
      * insert addSource(#DE-BY)
      * answerValueSet = Canonical(SEU-AF-ImpfungAntwortOhneAuffrischungVS)
    * item[+] insert addItem(3.14, #choice, [[Pneumokokken]])
      * insert addSource(#DE-BY)
      * answerValueSet = Canonical(SEU-AF-ImpfungAntwortOhneAuffrischungVS)
    * item[+] insert addItem(3.15, #choice, [[FSME]])
      * insert addSource(#DE-BY)
      * answerValueSet = Canonical(SEU-AF-ImpfungAntwortVS)
    * item[+] insert addItem(3.16, #choice, [[Rotaviren]])
      * insert addSource(#DE-BY)
      * answerValueSet = Canonical(SEU-AF-ImpfungAntwortOhneAuffrischungVS)
  * item[+] insert addGroup(3_1, Abfrage Impfungen - abgelehnt)
    * insert addSource(#DE-BY)
    * insert EnableWhenBoolean(3.2, =, true)
    * readOnly = true
    * item[+] insert addItem(3.3, #choice, [[Tetanus]])
      * insert addSource(#DE-BY)
      * answerValueSet = Canonical(SEU-AF-ImpfungAntwortVS)
      * initial.valueCoding = SEU-AF-ImpfungAntwortCS#0
      * readOnly = true
    * item[+] insert addItem(3.4, #choice, [[Diphtherie]])
      * insert addSource(#DE-BY)
      * answerValueSet = Canonical(SEU-AF-ImpfungAntwortVS)
      * initial.valueCoding = SEU-AF-ImpfungAntwortCS#0
      * readOnly = true
    * item[+] insert addItem(3.5, #choice, [[Pertussis]])
      * insert addSource(#DE-BY)
      * answerValueSet = Canonical(SEU-AF-ImpfungAntwortVS)
      * initial.valueCoding = SEU-AF-ImpfungAntwortCS#0
      * readOnly = true
    * item[+] insert addItem(3.6, #choice, [[IPV]])
      * insert addSource(#DE-BY)
      * answerValueSet = Canonical(SEU-AF-ImpfungAntwortOhneAuffrischungVS)
      * initial.valueCoding = SEU-AF-ImpfungAntwortCS#0
      * readOnly = true
    * item[+] insert addItem(3.7, #choice, [[HIB]])
      * insert addSource(#DE-BY)
      * answerValueSet = Canonical(SEU-AF-ImpfungAntwortOhneAuffrischungVS)
      * initial.valueCoding = SEU-AF-ImpfungAntwortCS#0
      * readOnly = true
    * item[+] insert addItem(3.8, #choice, [[Hepatitis B]])
      * insert addSource(#DE-BY)
      * answerValueSet = Canonical(SEU-AF-ImpfungAntwortOhneAuffrischungVS)
      * initial.valueCoding = SEU-AF-ImpfungAntwortCS#0
      * readOnly = true
    * item[+] insert addItem(3.9, #choice, [[Masern]])
      * insert addSource(#DE-BY)
      * answerValueSet = Canonical(SEU-AF-ImpfungAntwortOhneAuffrischungVS)
      * initial.valueCoding = SEU-AF-ImpfungAntwortCS#0
      * readOnly = true
    * item[+] insert addItem(3.10, #choice, [[Mumps]])
      * insert addSource(#DE-BY)
      * answerValueSet = Canonical(SEU-AF-ImpfungAntwortOhneAuffrischungVS)
      * initial.valueCoding = SEU-AF-ImpfungAntwortCS#0
      * readOnly = true
    * item[+] insert addItem(3.11, #choice, [[Röteln]])
      * insert addSource(#DE-BY)
      * answerValueSet = Canonical(SEU-AF-ImpfungAntwortOhneAuffrischungVS)
      * initial.valueCoding = SEU-AF-ImpfungAntwortCS#0
      * readOnly = true
    * item[+] insert addItem(3.12, #choice, [[Varizellen]])
      * insert addSource(#DE-BY)
      * answerValueSet = Canonical(SEU-AF-ImpfungAntwortOhneAuffrischungVS)
      * initial.valueCoding = SEU-AF-ImpfungAntwortCS#0
      * readOnly = true
    * item[+] insert addItem(3.13, #choice, [[Meningokokken]])
      * insert addSource(#DE-BY)
      * answerValueSet = Canonical(SEU-AF-ImpfungAntwortOhneAuffrischungVS)
      * initial.valueCoding = SEU-AF-ImpfungAntwortCS#0
      * readOnly = true
    * item[+] insert addItem(3.14, #choice, [[Pneumokokken]])
      * insert addSource(#DE-BY)
      * answerValueSet = Canonical(SEU-AF-ImpfungAntwortOhneAuffrischungVS)
      * initial.valueCoding = SEU-AF-ImpfungAntwortCS#0
      * readOnly = true
    * item[+] insert addItem(3.15, #choice, [[FSME]])
      * insert addSource(#DE-BY)
      * answerValueSet = Canonical(SEU-AF-ImpfungAntwortVS)
      * initial.valueCoding = SEU-AF-ImpfungAntwortCS#0
      * readOnly = true
    * item[+] insert addItem(3.16, #choice, [[Rotaviren]])
      * insert addSource(#DE-BY)
      * answerValueSet = Canonical(SEU-AF-ImpfungAntwortOhneAuffrischungVS)
      * initial.valueCoding = SEU-AF-ImpfungAntwortCS#0
      * readOnly = true
  * item[+] insert addItem(3.17, #boolean, [[Immunität gegen Varizellen aufgrund durchgemachter Varizellenerkrankung]])
    * insert addSource(#DE-BY)
  * item[+] insert addGroup(3_2, Kontraindikation für Masernimpfung)
    * insert addSource(#DE-BY)
    * item[+] insert addItem(3.18, #choice, [[Masernimpfung nicht erforderlich (ärztl. bestätigt), da]])
      * insert addSource(#DE-BY)
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