RuleSet: 3-af-impfungen
* item[+] insert addGroup(3, Impfungen)
  * item[+] insert addItem(3.1, #boolean, [[Impfbuch vorgelegt]])
  * item[+] insert addItem(3.2, #boolean, [[alle Impfungen werden abgelehnt oder sind nicht möglich]])
  * item[+] insert addGroup(3_1, Abfrage Impfungen)
    * insert EnableWhenBoolean(3.1, =, true)
    * insert EnableWhenBoolean(3.2, !=, true)
    * enableBehavior = #all
    * item[+] insert addItem(3.3, #choice, [[Tetanus]])
      * answerValueSet = Canonical(ImpfungAntwortVS)
    * item[+] insert addItem(3.4, #choice, [[Diphtherie]])
      * answerValueSet = Canonical(ImpfungAntwortVS)
    * item[+] insert addItem(3.5, #choice, [[Pertussis]])
      * answerValueSet = Canonical(ImpfungAntwortVS)
    * item[+] insert addItem(3.6, #choice, [[IPV]])
      * answerValueSet = Canonical(ImpfungAntwortOhneAuffrischungVS)
    * item[+] insert addItem(3.7, #choice, [[HIB]])
      * answerValueSet = Canonical(ImpfungAntwortOhneAuffrischungVS)
    * item[+] insert addItem(3.8, #choice, [[Hepatitis B]])
      * answerValueSet = Canonical(ImpfungAntwortOhneAuffrischungVS)
    * item[+] insert addItem(3.9, #choice, [[Masern]])
      * answerValueSet = Canonical(ImpfungAntwortOhneAuffrischungVS)
    * item[+] insert addItem(3.10, #choice, [[Mumps]])
      * answerValueSet = Canonical(ImpfungAntwortOhneAuffrischungVS)
    * item[+] insert addItem(3.11, #choice, [[Röteln]])
      * answerValueSet = Canonical(ImpfungAntwortOhneAuffrischungVS)
    * item[+] insert addItem(3.12, #choice, [[Varizellen]])
      * answerValueSet = Canonical(ImpfungAntwortOhneAuffrischungVS)
    * item[+] insert addItem(3.13, #choice, [[Meningokokken]])
      * answerValueSet = Canonical(ImpfungAntwortOhneAuffrischungVS)
    * item[+] insert addItem(3.14, #choice, [[Pneumokokken]])
      * answerValueSet = Canonical(ImpfungAntwortOhneAuffrischungVS)
    * item[+] insert addItem(3.15, #choice, [[FSME]])
      * answerValueSet = Canonical(ImpfungAntwortVS)
    * item[+] insert addItem(3.16, #choice, [[Rotaviren]])
      * answerValueSet = Canonical(ImpfungAntwortOhneAuffrischungVS)
  * item[+] insert addGroup(3_1, Abfrage Impfungen - abgelent)
    * insert EnableWhenBoolean(3.2, =, true)
    * readOnly = true
    * item[+] insert addItem(3.3, #choice, [[Tetanus]])
      * answerValueSet = Canonical(ImpfungAntwortVS)
      * initial.valueCoding = ImpfungAntwortCS#0
      * readOnly = true
    * item[+] insert addItem(3.4, #choice, [[Diphtherie]])
      * answerValueSet = Canonical(ImpfungAntwortVS)
      * initial.valueCoding = ImpfungAntwortCS#0
      * readOnly = true
    * item[+] insert addItem(3.5, #choice, [[Pertussis]])
      * answerValueSet = Canonical(ImpfungAntwortVS)
      * initial.valueCoding = ImpfungAntwortCS#0
      * readOnly = true
    * item[+] insert addItem(3.6, #choice, [[IPV]])
      * answerValueSet = Canonical(ImpfungAntwortOhneAuffrischungVS)
      * initial.valueCoding = ImpfungAntwortCS#0
      * readOnly = true
    * item[+] insert addItem(3.7, #choice, [[HIB]])
      * answerValueSet = Canonical(ImpfungAntwortOhneAuffrischungVS)
      * initial.valueCoding = ImpfungAntwortCS#0
      * readOnly = true
    * item[+] insert addItem(3.8, #choice, [[Hepatitis B]])
      * answerValueSet = Canonical(ImpfungAntwortOhneAuffrischungVS)
      * initial.valueCoding = ImpfungAntwortCS#0
      * readOnly = true
    * item[+] insert addItem(3.9, #choice, [[Masern]])
      * answerValueSet = Canonical(ImpfungAntwortOhneAuffrischungVS)
      * initial.valueCoding = ImpfungAntwortCS#0
      * readOnly = true
    * item[+] insert addItem(3.10, #choice, [[Mumps]])
      * answerValueSet = Canonical(ImpfungAntwortOhneAuffrischungVS)
      * initial.valueCoding = ImpfungAntwortCS#0
      * readOnly = true
    * item[+] insert addItem(3.11, #choice, [[Röteln]])
      * answerValueSet = Canonical(ImpfungAntwortOhneAuffrischungVS)
      * initial.valueCoding = ImpfungAntwortCS#0
      * readOnly = true
    * item[+] insert addItem(3.12, #choice, [[Varizellen]])
      * answerValueSet = Canonical(ImpfungAntwortOhneAuffrischungVS)
      * initial.valueCoding = ImpfungAntwortCS#0
      * readOnly = true
    * item[+] insert addItem(3.13, #choice, [[Meningokokken]])
      * answerValueSet = Canonical(ImpfungAntwortOhneAuffrischungVS)
      * initial.valueCoding = ImpfungAntwortCS#0
      * readOnly = true
    * item[+] insert addItem(3.14, #choice, [[Pneumokokken]])
      * answerValueSet = Canonical(ImpfungAntwortOhneAuffrischungVS)
      * initial.valueCoding = ImpfungAntwortCS#0
      * readOnly = true
    * item[+] insert addItem(3.15, #choice, [[FSME]])
      * answerValueSet = Canonical(ImpfungAntwortVS)
      * initial.valueCoding = ImpfungAntwortCS#0
      * readOnly = true
    * item[+] insert addItem(3.16, #choice, [[Rotaviren]])
      * answerValueSet = Canonical(ImpfungAntwortOhneAuffrischungVS)
      * initial.valueCoding = ImpfungAntwortCS#0
      * readOnly = true
  * item[+] insert addItem(3.17, #boolean, [[Immunität gegen Varizellen aufgrund durchgemachter Varizellenerkrankung]]) //nur ja...
  * item[+] insert addItem(3.18, #boolean, [[Masernimpfung nicht erforderlich (ärztl. bestätigt), da]])
    * answerValueSet = Canonical(MasernimpfungNichtErforderlichGrundVS)


CodeSystem:  MasernimpfungNichtErforderlichGrundCS
Id: MasernimpfungNichtErforderlichGrundCS
Title: "SEU Masernimpfung nicht erforderlich Grund"
* #1  "Antikörpertiter gegen Masern ausreichend"
* #2  "Masernerkrankung durchgemacht wurde"
* #3  "med. Kontraindikation dauerhaft besteht"
* #4  "Bescheinigung von anderer Behörde vorliegt"

ValueSet: MasernimpfungNichtErforderlichGrundVS
Id: MasernimpfungNichtErforderlichGrundVS
Title: "SEU Masernimpfung nicht erforderlich Grund"
Description: "Diese Codes enthalten die Art der Region"
* include codes from system MasernimpfungNichtErforderlichGrundCS

CodeSystem:  ImpfungAntwortCS
Id: ImpfungAntwortCS
Title: "SEU Impfung Antwort"
* #0  "keine Impfung"
* #1  "Grundimmunisierung unvollständig"
* #2  "Grundimmunisierung abgeschlossen (ohne Auffrischung)"
* #3  "Grundimmunisierung abgeschlossen und 1+ Auffrischung"

ValueSet: ImpfungAntwortVS
Id: ImpfungAntwortVS
Title: "SEU Impfung Antwort"
Description: "Diese Codes enthalten die Art der Region"
* include codes from system ImpfungAntwortCS
* ^expansion.timestamp = "2024-03-30T13:28:00+00:00"
* ^expansion.contains[+].system = Canonical(ImpfungAntwortCS)
* ^expansion.contains[=].code = #0
* ^expansion.contains[=].display = "keine Impfung"
* ^expansion.contains[+].system = Canonical(ImpfungAntwortCS)
* ^expansion.contains[=].code = #1
* ^expansion.contains[=].display = "Grundimmunisierung unvollständig"
* ^expansion.contains[+].system = Canonical(ImpfungAntwortCS)
* ^expansion.contains[=].code = #2
* ^expansion.contains[=].display = "Grundimmunisierung abgeschlossen (ohne Auffrischung)"
* ^expansion.contains[+].system = Canonical(ImpfungAntwortCS)
* ^expansion.contains[=].code = #3
* ^expansion.contains[=].display = "Grundimmunisierung abgeschlossen und 1+ Auffrischung"

ValueSet: ImpfungAntwortOhneAuffrischungVS
Id: ImpfungAntwortOhneAuffrischungVS
Title: "SEU Impfung Antwort ohne Auffrischung"
Description: "Diese Codes enthalten die Art der Region"
* ImpfungAntwortCS#0 "keine Impfung"
* ImpfungAntwortCS#0 "Grundimmunisierung unvollständig"
* ImpfungAntwortCS#2 "Grundimmunisierung abgeschlossen (ohne Auffrischung)"
* ^expansion.timestamp = "2024-03-30T13:28:00+00:00"
* ^expansion.contains[+].system = Canonical(ImpfungAntwortCS)
* ^expansion.contains[=].code = #0
* ^expansion.contains[=].display = "keine Impfung"
* ^expansion.contains[+].system = Canonical(ImpfungAntwortCS)
* ^expansion.contains[=].code = #1
* ^expansion.contains[=].display = "Grundimmunisierung unvollständig"
* ^expansion.contains[+].system = Canonical(ImpfungAntwortCS)
* ^expansion.contains[=].code = #2
* ^expansion.contains[=].display = "Grundimmunisierung abgeschlossen (ohne Auffrischung)"