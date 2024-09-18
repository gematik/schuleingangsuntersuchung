RuleSet: 3-af-impfungen
* item[+] insert addGroup(3, Impfungen)
  * item[+] insert addItem(3.1, #boolean, [[Impfbuch vorgelegt]])
    * insert addSource(#DE-BY)
  * item[+] insert addItem(3.2, #boolean, [[alle Impfungen werden abgelehnt oder sind nicht möglich]])
    * insert addSource(#DE-BY)
  * item[+] insert addGroup(3_1, Abfrage Impfungen)
    * insert addSource(#DE-BY)
    * insert enableWhenBoolean(3.1, =, true)
    * insert enableWhenBoolean(3.2, !=, true)
    * enableBehavior = #all
    * item[+] insert addItem(3.3, #choice, [[Tetanus]])
      * insert addSource(#DE-BY)
      * answerValueSet = Canonical(SEU_UB_ImpfungAntwortVS)
    * item[+] insert addItem(3.4, #choice, [[Diphtherie]])
      * insert addSource(#DE-BY)
      * answerValueSet = Canonical(SEU_UB_ImpfungAntwortVS)
    * item[+] insert addItem(3.5, #choice, [[Pertussis]])
      * insert addSource(#DE-BY)
      * answerValueSet = Canonical(SEU_UB_ImpfungAntwortVS)
    * item[+] insert addItem(3.6, #choice, [[IPV]])
      * insert addSource(#DE-BY)
      * answerValueSet = Canonical(SEU_UB_ImpfungAntwortOhneAuffrischungVS)
    * item[+] insert addItem(3.7, #choice, [[HIB]])
      * insert addSource(#DE-BY)
      * answerValueSet = Canonical(SEU_UB_ImpfungAntwortOhneAuffrischungVS)
    * item[+] insert addItem(3.8, #choice, [[Hepatitis B]])
      * insert addSource(#DE-BY)
      * answerValueSet = Canonical(SEU_UB_ImpfungAntwortOhneAuffrischungVS)
    * item[+] insert addItem(3.9, #choice, [[Masern]])
      * insert addSource(#DE-BY)
      * answerValueSet = Canonical(SEU_UB_ImpfungAntwortOhneAuffrischungVS)
    * item[+] insert addItem(3.10, #choice, [[Mumps]])
      * insert addSource(#DE-BY)
      * answerValueSet = Canonical(SEU_UB_ImpfungAntwortOhneAuffrischungVS)
    * item[+] insert addItem(3.11, #choice, [[Röteln]])
      * insert addSource(#DE-BY)
      * answerValueSet = Canonical(SEU_UB_ImpfungAntwortOhneAuffrischungVS)
    * item[+] insert addItem(3.12, #choice, [[Varizellen]])
      * insert addSource(#DE-BY)
      * answerValueSet = Canonical(SEU_UB_ImpfungAntwortOhneAuffrischungVS)
    * item[+] insert addItem(3.13, #choice, [[Meningokokken]])
      * insert addSource(#DE-BY)
      * answerValueSet = Canonical(SEU_UB_ImpfungAntwortOhneAuffrischungVS)
    * item[+] insert addItem(3.14, #choice, [[Pneumokokken]])
      * insert addSource(#DE-BY)
      * answerValueSet = Canonical(SEU_UB_ImpfungAntwortOhneAuffrischungVS)
    * item[+] insert addItem(3.15, #choice, [[FSME]])
      * insert addSource(#DE-BY)
      * answerValueSet = Canonical(SEU_UB_ImpfungAntwortVS)
    * item[+] insert addItem(3.16, #choice, [[Rotaviren]])
      * insert addSource(#DE-BY)
      * answerValueSet = Canonical(SEU_UB_ImpfungAntwortOhneAuffrischungVS)
  * item[+] insert addGroup(3_1, Abfrage Impfungen - abgelehnt)
    * insert addSource(#DE-BY)
    * insert enableWhenBoolean(3.2, =, true)
    * readOnly = true
    * item[+] insert addItem(3.3, #choice, [[Tetanus]])
      * insert addSource(#DE-BY)
      * answerValueSet = Canonical(SEU_UB_ImpfungAntwortVS)
      * initial.valueCoding = SEU_UB_ImpfungAntwortCS#0
      * readOnly = true
    * item[+] insert addItem(3.4, #choice, [[Diphtherie]])
      * insert addSource(#DE-BY)
      * answerValueSet = Canonical(SEU_UB_ImpfungAntwortVS)
      * initial.valueCoding = SEU_UB_ImpfungAntwortCS#0
      * readOnly = true
    * item[+] insert addItem(3.5, #choice, [[Pertussis]])
      * insert addSource(#DE-BY)
      * answerValueSet = Canonical(SEU_UB_ImpfungAntwortVS)
      * initial.valueCoding = SEU_UB_ImpfungAntwortCS#0
      * readOnly = true
    * item[+] insert addItem(3.6, #choice, [[IPV]])
      * insert addSource(#DE-BY)
      * answerValueSet = Canonical(SEU_UB_ImpfungAntwortOhneAuffrischungVS)
      * initial.valueCoding = SEU_UB_ImpfungAntwortCS#0
      * readOnly = true
    * item[+] insert addItem(3.7, #choice, [[HIB]])
      * insert addSource(#DE-BY)
      * answerValueSet = Canonical(SEU_UB_ImpfungAntwortOhneAuffrischungVS)
      * initial.valueCoding = SEU_UB_ImpfungAntwortCS#0
      * readOnly = true
    * item[+] insert addItem(3.8, #choice, [[Hepatitis B]])
      * insert addSource(#DE-BY)
      * answerValueSet = Canonical(SEU_UB_ImpfungAntwortOhneAuffrischungVS)
      * initial.valueCoding = SEU_UB_ImpfungAntwortCS#0
      * readOnly = true
    * item[+] insert addItem(3.9, #choice, [[Masern]])
      * insert addSource(#DE-BY)
      * answerValueSet = Canonical(SEU_UB_ImpfungAntwortOhneAuffrischungVS)
      * initial.valueCoding = SEU_UB_ImpfungAntwortCS#0
      * readOnly = true
    * item[+] insert addItem(3.10, #choice, [[Mumps]])
      * insert addSource(#DE-BY)
      * answerValueSet = Canonical(SEU_UB_ImpfungAntwortOhneAuffrischungVS)
      * initial.valueCoding = SEU_UB_ImpfungAntwortCS#0
      * readOnly = true
    * item[+] insert addItem(3.11, #choice, [[Röteln]])
      * insert addSource(#DE-BY)
      * answerValueSet = Canonical(SEU_UB_ImpfungAntwortOhneAuffrischungVS)
      * initial.valueCoding = SEU_UB_ImpfungAntwortCS#0
      * readOnly = true
    * item[+] insert addItem(3.12, #choice, [[Varizellen]])
      * insert addSource(#DE-BY)
      * answerValueSet = Canonical(SEU_UB_ImpfungAntwortOhneAuffrischungVS)
      * initial.valueCoding = SEU_UB_ImpfungAntwortCS#0
      * readOnly = true
    * item[+] insert addItem(3.13, #choice, [[Meningokokken]])
      * insert addSource(#DE-BY)
      * answerValueSet = Canonical(SEU_UB_ImpfungAntwortOhneAuffrischungVS)
      * initial.valueCoding = SEU_UB_ImpfungAntwortCS#0
      * readOnly = true
    * item[+] insert addItem(3.14, #choice, [[Pneumokokken]])
      * insert addSource(#DE-BY)
      * answerValueSet = Canonical(SEU_UB_ImpfungAntwortOhneAuffrischungVS)
      * initial.valueCoding = SEU_UB_ImpfungAntwortCS#0
      * readOnly = true
    * item[+] insert addItem(3.15, #choice, [[FSME]])
      * insert addSource(#DE-BY)
      * answerValueSet = Canonical(SEU_UB_ImpfungAntwortVS)
      * initial.valueCoding = SEU_UB_ImpfungAntwortCS#0
      * readOnly = true
    * item[+] insert addItem(3.16, #choice, [[Rotaviren]])
      * insert addSource(#DE-BY)
      * answerValueSet = Canonical(SEU_UB_ImpfungAntwortOhneAuffrischungVS)
      * initial.valueCoding = SEU_UB_ImpfungAntwortCS#0
      * readOnly = true
  * item[+] insert addItem(3.17, #boolean, [[Immunität gegen Varizellen aufgrund durchgemachter Varizellenerkrankung]])
    * insert addSource(#DE-BY)
  * item[+] insert addGroup(3_2, Kontraindikation für Masernimpfung)
    * insert addSource(#DE-BY)
    * item[+] insert addItem(3.18, #choice, [[Masernimpfung nicht erforderlich (ärztl. bestätigt), da]])
      * insert addSource(#DE-BY)
      * answerValueSet = Canonical(SEU_UB_MasernimpfungNichtErforderlichGrundVS)
  * item[+]
    * insert addItemWithSource(3.19, #choice, [[Impfstatus]], #DE-BW)
    * answerValueSet = Canonical(SEU_UB_ImpfungAntwortOhneAuffrischungVS)

  * item[+]
    * insert addItemWithSource(3.20, #boolean, [[Andere Impfungen erhalten]], #DE-BW)
    * item[+]
      * insert addItemWithSource(3.20.1, #string, [[Welche andere Impfungen erhalten]], #DE-BW)  
  * item[+]
    * insert addItemWithSource(3.21, #string, [[Sonstige Bemerkungen Impfung]], #DE-BW)
    * item[+]
      * insert addItemWithSource(3.21.1, #boolean, [[Übernahme Impf-Bemerkungen in Befundbogen für Sorgeberechtigte]], #DE-BW)
      * insert enableWhenExists(3.21)

CodeSystem:  SEU_UB_MasernimpfungNichtErforderlichGrundCS
Id: SEU-UB-MasernimpfungNichtErforderlichGrundCS
Title: "SEU Masernimpfung nicht erforderlich Grund"
* #1  "Antikörpertiter gegen Masern ausreichend"
* #2  "Masernerkrankung durchgemacht wurde"
* #3  "med. Kontraindikation dauerhaft besteht"
* #4  "Bescheinigung von anderer Behörde vorliegt"

ValueSet: SEU_UB_MasernimpfungNichtErforderlichGrundVS
Id: SEU-UB-MasernimpfungNichtErforderlichGrundVS
Title: "SEU Masernimpfung nicht erforderlich Grund"
Description: "Diese Codes enthalten Angaben zum Grund, warum die Masernimpfung nicht erforderlich ist"
* include codes from system SEU_UB_MasernimpfungNichtErforderlichGrundCS
* ^expansion.contains[+].system = Canonical(SEU_UB_MasernimpfungNichtErforderlichGrundCS)
* ^expansion.contains[=].code = #1
* ^expansion.contains[=].display = "Antikörpertiter gegen Masern ausreichend"
* ^expansion.contains[+].system = Canonical(SEU_UB_MasernimpfungNichtErforderlichGrundCS)
* ^expansion.contains[=].code = #2
* ^expansion.contains[=].display = "Masernerkrankung durchgemacht wurde"
* ^expansion.contains[+].system = Canonical(SEU_UB_MasernimpfungNichtErforderlichGrundCS)
* ^expansion.contains[=].code = #3
* ^expansion.contains[=].display = "med. Kontraindikation dauerhaft besteht"
* ^expansion.contains[+].system = Canonical(SEU_UB_MasernimpfungNichtErforderlichGrundCS)
* ^expansion.contains[=].code = #4
* ^expansion.contains[=].display = "Bescheinigung von anderer Behörde vorliegt"


CodeSystem:  SEU_UB_ImpfungAntwortCS
Id: SEU-UB-ImpfungAntwortCS
Title: "SEU Impfung Antwort"
* #0  "keine Impfung"
* #1  "Grundimmunisierung unvollständig"
* #2  "Grundimmunisierung abgeschlossen (ohne Auffrischung)"
* #3  "Grundimmunisierung abgeschlossen und 1+ Auffrischung"

ValueSet: SEU_UB_ImpfungAntwortVS
Id: SEU-UB-ImpfungAntwortVS
Title: "SEU Impfung Antwort"
Description: "Diese Codes enthalten allgemeine Angaben über den Status einer Impfung"
* include codes from system SEU_UB_ImpfungAntwortCS
* ^expansion.timestamp = "2024-03-30T13:28:00+00:00"
* ^expansion.contains[+].system = Canonical(SEU_UB_ImpfungAntwortCS)
* ^expansion.contains[=].code = #0
* ^expansion.contains[=].display = "keine Impfung"
* ^expansion.contains[+].system = Canonical(SEU_UB_ImpfungAntwortCS)
* ^expansion.contains[=].code = #1
* ^expansion.contains[=].display = "Grundimmunisierung unvollständig"
* ^expansion.contains[+].system = Canonical(SEU_UB_ImpfungAntwortCS)
* ^expansion.contains[=].code = #2
* ^expansion.contains[=].display = "Grundimmunisierung abgeschlossen (ohne Auffrischung)"
* ^expansion.contains[+].system = Canonical(SEU_UB_ImpfungAntwortCS)
* ^expansion.contains[=].code = #3
* ^expansion.contains[=].display = "Grundimmunisierung abgeschlossen und 1+ Auffrischung"

ValueSet: SEU_UB_ImpfungAntwortOhneAuffrischungVS
Id: SEU-UB-ImpfungAntwortOhneAuffrischungVS
Title: "SEU Impfung Antwort ohne Auffrischung"
Description: "Diese Codes enthalten allgemeine Angaben über den Status einer Impfung ohne die Möglichkeit zur Angave der 1+ Auffrischung"
* SEU_UB_ImpfungAntwortCS#0 "keine Impfung"
* SEU_UB_ImpfungAntwortCS#1 "Grundimmunisierung unvollständig"
* SEU_UB_ImpfungAntwortCS#2 "Grundimmunisierung abgeschlossen (ohne Auffrischung)"
* ^expansion.timestamp = "2024-03-30T13:28:00+00:00"
* ^expansion.contains[+].system = Canonical(SEU_UB_ImpfungAntwortCS)
* ^expansion.contains[=].code = #0
* ^expansion.contains[=].display = "keine Impfung"
* ^expansion.contains[+].system = Canonical(SEU_UB_ImpfungAntwortCS)
* ^expansion.contains[=].code = #1
* ^expansion.contains[=].display = "Grundimmunisierung unvollständig"
* ^expansion.contains[+].system = Canonical(SEU_UB_ImpfungAntwortCS)
* ^expansion.contains[=].code = #2
* ^expansion.contains[=].display = "Grundimmunisierung abgeschlossen (ohne Auffrischung)"

CodeSystem: ImpfstatusCS
Id: impfstatus-cs
Title: "Impfstatus CodeSystem"
Description: "CodeSystem für den Impfstatus basierend auf den spezifischen Kategorien."
* #keine_Angabe "Keine Angabe"
* #besitzt_kein_Impfbuch "Besitzt kein Impfbuch"
* #besitzt_kein_Impfbuch_nicht_geimpft "Besitzt kein Impfbuch (lt schr. Erkl. nicht geimpft)"
* #Impfbuch_in_Kopie_vorgelegt "Impfbuch in Kopie vorgelegt"
* #Impfberatung_durchgeführt "Impfberatung durchgeführt"
* #Impfberatung_nicht_durchgeführt_keine_Angabe "Impfberatung nicht durchgeführt/Keine Angabe"

ValueSet: SEU_UB_ImpfstatusVS
Id: impfstatus-vs
Title: "Impfstatus ValueSet"
Description: "ValueSet, das alle Codes aus dem Impfstatus CodeSystem enthält."
* include codes from system ImpfstatusCS
* ^expansion.timestamp = "2024-09-10T12:00:00+00:00"
* ^expansion.contains[0].system = Canonical(ImpfstatusCS)
* ^expansion.contains[=].code = #keine_Angabe
* ^expansion.contains[=].display = "Keine Angabe"
* ^expansion.contains[+].system = Canonical(ImpfstatusCS)
* ^expansion.contains[=].code = #besitzt_kein_Impfbuch
* ^expansion.contains[=].display = "Besitzt kein Impfbuch"
* ^expansion.contains[+].system = Canonical(ImpfstatusCS)
* ^expansion.contains[=].code = #besitzt_kein_Impfbuch_nicht_geimpft
* ^expansion.contains[=].display = "Besitzt kein Impfbuch (lt schr. Erkl. nicht geimpft)"
* ^expansion.contains[+].system = Canonical(ImpfstatusCS)
* ^expansion.contains[=].code = #Impfbuch_in_Kopie_vorgelegt
* ^expansion.contains[=].display = "Impfbuch in Kopie vorgelegt"
* ^expansion.contains[+].system = Canonical(ImpfstatusCS)
* ^expansion.contains[=].code = #Impfberatung_durchgeführt
* ^expansion.contains[=].display = "Impfberatung durchgeführt"
* ^expansion.contains[+].system = Canonical(ImpfstatusCS)
* ^expansion.contains[=].code = #Impfberatung_nicht_durchgeführt_keine_Angabe
* ^expansion.contains[=].display = "Impfberatung nicht durchgeführt/Keine Angabe"
