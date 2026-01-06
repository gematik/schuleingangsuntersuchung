Instance: SorgeberechtigtenfragebogenMV
InstanceOf: Questionnaire
Usage: #example
Title: "Sorgeberechtigtenfragebogen MV"
Description: "Sorgeberechtigtenfragebogen MV"
* contained[+] = SEU_EF_NeinAbgeschlossenLaeuftGeplantVS
* contained[+] = DeuevAnlage8LaenderkennzeichenVS
* contained[+] = GenderDEVS
* contained[+] = AuffaelligkeitVerhaltenVS
* contained[+] = ErkrankungenLetztesJahrVS
* contained[+] = PflegegradVS
* contained[+] = UnfallArtVS
* contained[+] = ErwerbsstatusVS
* contained[+] = AtopischeErkrankungenVS
* contained[+] = ErwerbsstatusInclSonstigesVS
* contained[+] = JaNeinWartelisteVS
* contained[+] = SEU_EF_OperationenVS
* contained[+] = SEU_EF_BehandlungstypVS
* id = "SEU-Sorgeberechtigtenfragebogen-MV"
* url = "https://www.oegd.de/fhir/seu/Questionnaire/SorgeberechtigtenfragebogenMV"
* title = "SEU Sorgeberechtigtenfragebogen MV"
* insert launchContext("patient", #Patient, "Patientenkontext")
* status = #draft
* derivedFrom[0] = Canonical(Sorgeberechtigtenfragebogen)
//********************************************
// Personenbezogene Daten Kind
* item[+]
  * type = #group
  * linkId = "1"
  * text = "(1) Personenbezogene Daten Kind"
  * item[+]
    * insert addItem(1.1, #string, Nachname des Kindes)
    * insert initialExpression("%patient.name[0].family")
    * required = true
  * item[+]
    * insert addItem(1.2, #string, Vorname des Kindes)
    * insert initialExpression("%patient.name[0].given[0]")
    * required = true
  * item[+]
    * insert addItem(1.3, #date, Geburtsdatum)
    * insert initialExpression("%patient.birthdate")
    * required = true
  * item[+]
    * insert addItem(1.4, #choice, Staatsangehörigkeit)
    * answerValueSet = Canonical(DeuevAnlage8LaenderkennzeichenVS)
    * required = true
  * item[+]
    * insert addItem(1.7, #string, Geburtsort)
    * required = true
  * item[+]
    * insert addItem(1.9, #string, PLZ)
    * insert regEx([["^[0-9]{5}$"]])
    * required = true
  * item[+]
    * insert addItem(1.10, #string, Wohnort)
    * required = true
  * item[+]
    * insert addItem(1.11, #string, Straße)
    * required = true
  * item[+]
    * insert addItem(1.11a, #string, Hausnummer)
    * required = true
//********************************************
// Personenbezogene Daten Personenberechtigter
* item[+]
  * insert addItem(2, #group, Personenbezogene Daten Personensorgeberechtigter)
  * repeats = true
  * item[+]
    * answerValueSet = Canonical(GenderDEVS)
    * insert addItem(2.1, #choice, Geschlecht)
  * item[+]
    * insert addItem(2.2, #string, Nachname)
    * insert initialExpression("%patient.name[0].family")
  * item[+]
    * insert addItem(2.3, #string, Vorname)
    * insert initialExpression("%patient.name[0].given[0]")
  * item[+]
    * insert addItem(2.4, #string, PLZ)
    * insert regEx([["^[0-9]{5}$"]])
  * item[+]
    * insert addItem(2.5, #string, Wohnort)
  * item[+]
    * insert addItem(2.6, #string, Straße)
  * item[+]
    * insert addItem(2.7, #string, Telefonnummer)
    * insert regEx([["^(\\+|0)(\\d|\\s)*\\d$"]])
  * item[+]
    * insert addItem(2.8, #string, Email)
    * insert regEx([["^[a-zA-Z0-9.!#$%&’*+/=?^_`{|}~-]+@[a-zA-Z0-9-]+(?:\\.[a-zA-Z0-9-]+)*$"]])
  * item[+]
    * answerValueSet = Canonical(DeuevAnlage8LaenderkennzeichenVS)
    * insert addItem(2.10, #choice, Herkunftsland)
//********************************************
// Familiendaten
* item[+]
  * insert addItem(3, #group, Familiendaten)
  * item[+]
    * insert addItem(3.1, #integer, Anzahl der Geschwister)
  * item[+]
    * insert addItemWithSource(3.1b, #integer, Aktuell im Haushalt lebende Kinder, #DE-SL)
    * insert minValueInt(0)
    * insert maxValueInt(10)
  * item[+]
    * insert addItem(3.1.1, #group, Details Geschwister)
    * repeats = true
    * enableWhen[+]
      * question = "3.1"
      * operator = #> 
      * answerInteger = 0
    * item[+]
      * insert addItem(3.1.1.1, #date, Geburtsdatum des Geschwisters)
  * item[+]
    * insert addItem(3.2, #group, Familiäre Vorgeschichte)
    * item[+]
      * insert addItem(3.2.6, #boolean, [[Hat Ihr Kind eine körperliche, geistige oder seelische Behinderung?]])
    * item[+]
      * insert addItemWithSource(3.2.6a, #boolean, [[Liegt bei Ihrem Kind ein Grad der Behinderung/ein Pflegegrad vor?]], #DE-SL)
//********************************************
// Kinderbetreuung
* item[+]
  * insert addItem(4, #group, Kinderbetreuung)
  * item[+]
    * insert addItem(4.0b, #boolean, Ist das Kind in einem Kindergarten/einer Kindertageseinrichtung?)
  * item[+]
    * insert addItem(4.7, #boolean, Erfolgte die Betreuung auch durch eine Tagesmutter?)
  * item[+]
    * insert addItem(4.8, #date, Seit wann ist die Tagesmutter im Einsatz?)
    * enableWhen[+]
      * question = "4.7"
      * operator = #=
      * answerBoolean = true
  * item[+]
    * insert addItemWithSource(4.9, #date, [[Seit wann besucht das Kind eine Kita?]], #DE-SN)
    * enableWhen[+]
      * question = "4.0b"
      * operator = #=
      * answerBoolean = true
//********************************************
// Schwangerschaft und Geburt
* item[+]
  * insert addItem(5, #group, [[Schwangerschaft und Geburt]])
  * item[+]
    * insert addItemWithSource(5.2.a, #integer, [[Geburtsgewicht (in Gramm)]], #DE-SL)
    * insert uunit(g, "Gramm")
    * insert minValueInt(360)
    * insert maxValueInt(6500)    
  * item[+]
    * insert addItem(5.3a, #integer, [[Geburtslänge (in cm)]])
  * item[+]
    * insert addItem(5.5, #boolean, [[Auffälligkeit bei der Geburt]])
    * item[+]
      * insert enableWhenBoolean(5.5, =, true)
      * insert addItem(5.5.1, #string, [[Welche Auffälligkeit?]])
  * item[+]
    * insert addItem(5.6, #boolean, [[Auffälligkeit/Krankheit in der Schwangerschaft]])
    * item[+]
      * insert enableWhenBoolean(5.6, =, true)
      * insert addItem(5.6.1, #string, [[Welche Auffälligkeit?]])
  * item[+]
    * insert addItemWithSource(5.8, #boolean, [[Stillen / mit Muttermilch ernährt]], #DE-SL)
//********************************************
// Entwicklung
* item[+]
  * insert addItem(7, #group, [[Entwicklung]])
  * item[+]
    * insert addItem(7.1, #boolean, [[Sind Sie mit der Entwicklung ihres Kinds zufrieden?]])
  * item[+]
    * insert addItem(7.2, #text, [[Mit was sind Sie Unzufrieden?]])
    * enableWhen[+]
      * question = "7.1"
      * operator = #=
      * answerBoolean = false
  * item[+]
    * insert addItem(7.3, #integer, [[Freies Laufen ab? (Monate)]])
  * item[+]
    * insert addItem(7.5, #integer, [[Erste Sätze ab? (Monate)]])
  * item[+]
    * insert addItem(7.11, #open-choice, [[Auffälligkeit des Verhaltens]])
    * repeats = true
    * answerValueSet = Canonical(AuffaelligkeitVerhaltenVS)
//********************************************
// Erkrankungen und gesundheitliche Einschränkungen
* item[+]
  * insert addItem(8, #group, [[Erkrankungen und gesundheitliche Einschränkungen]])
  * item[+]
    * insert addItem(8.1, #boolean, [[In regelmäßiger ärztlicher bzw. psychologischer Behandlung]])
  * item[+]
    * insert addItemWithSource(8.2a, #choice, [[Welche Behandlung? (Mehrfachnennung möglich)]], #DE-SL)
    * insert enableWhenBoolean(8.1, =, true)
    * answerValueSet = Canonical(SEU_EF_BehandlungstypVS)
    * repeats = true
  * item[+]
    * insert addItem(8.11.g, #group, [[Erkrankungen]])
    * repeats = true
    * item[+]
      * answerValueSet = Canonical(ErkrankungVS)
      * insert addItem(8.11.g.1, #open-choice, [[Erkrankung]])
  * item[+]
    * insert addItem(8.13.g, #group, [[Erkrankungen im letzten Jahr]])
    * repeats = true
    * item[+]
      * insert addItem(8.13.g.1, #open-choice, [[Erkrankung]])
      * answerValueSet = Canonical(ErkrankungenLetztesJahrVS)
  * item[+]
    * insert addItem(8.15, #boolean, [[Krankenhausaufenthalt]])
  * item[+]
    * answerValueSet = Canonical(AtopischeErkrankungenVS)  
    * insert addItem(8.16a, #choice, [[Besitzt Ihr Kind Allergien?]])
  * item[+]
    * insert addItem(8.19, #integer, [[Grad der Behinderung]])
  * item[+]
    * answerValueSet = Canonical(PflegegradVS)
    * insert addItem(8.20, #choice, [[Pflegegrad]])
  * item[+]
    * insert addItem(8.21, #boolean, [[Schwere Behinderung vorhanden?]])
  * item[+]
    * insert addGroup(8.21.g, [[Details Behinderung]])
    * insert enableWhenBoolean(8.21, =, true)
    * item[+]
      * insert addItem(8.21.g.2, #text, [[Behinderung Merkzeichen]])
  * item[+]
    * insert addItem(8.23, #boolean, [[Regelmäßige Medikamenteneinnahme]])
  * item[+]
    * insert addItem(8.23.1, #string, [[Welches Medikament]])
    * insert enableWhenBoolean(8.23, =, true)   
    * repeats = true
  * item[+]
    * insert addItem(8.27, #boolean, [[Wurde Ihr Kind operiert]])
    * item[+]
      * insert addItem(8.27.2, #choice, [[Welche Operationen wurden durchgeführt?]])
      * repeats = true
      * insert enableWhenBoolean(8.27, =, true)
      * answerValueSet = Canonical(SEU_EF_OperationenVS)
  * item[+]
    * insert addItem(8.28a, #boolean, [[Hatte Ihr Kind einen Unfall]])
  * item[+]
    * insert addItem(8.28.g, #group, [[Hatte Ihr Kind einen Unfall]])
    * insert enableWhenBoolean(8.28a, =, true)
    //* insert enableWhenBoolean(8.28b, =, true) TODO auskommentiert ohne fachliche überprüfung
    * enableBehavior = #any
    * repeats = true
    * item[+]
      * answerValueSet = Canonical(UnfallArtVS)
      * insert addItem(8.28.g.2, #choice, [[Art des Unfalls]])
  * item[+]
    * insert addItemWithSource(8.33, #boolean, [[Einkoten tags]], #DE-SL)
  * item[+]
    * insert addItemWithSource(8.34, #boolean, [[Einkoten nachts]], #DE-SL)
//********************************************
// Förderungen
* item[+]
  * insert addItem(9, #group, [[Förderungen]])
  * item[+]
    * insert addGroup(9.1a.g, Therapien)
    * insert enableWhenBoolean(9.1a, =, true)
    * insert addSource(#DE-SN)
    * item[+]
      * insert addItem(9.2, #choice, [[Sprachtherapie]])
      * answerValueSet = Canonical(SEU_EF_NeinAbgeschlossenLaeuftGeplantVS)
    * item[+]
      * insert addItemWithSource(9.2a, #choice, [[Sprachförderung]], #DE-BW)
      * answerValueSet = Canonical(JaNeinWartelisteVS)
    * item[+]
      * insert addItemWithSource(9.2b, #choice, [[Logopädie]], #DE-BW)
      * answerValueSet = Canonical(JaNeinWartelisteVS)
    * item[+]
      * insert addItemWithSource(9.2c, #choice, [[Ergotherapie]], #DE-BW)
      * answerValueSet = Canonical(JaNeinWartelisteVS)
    * item[+]
      * insert addItemWithSource(9.2d, #choice, [[Psychotherapie]], #DE-BW)
      * answerValueSet = Canonical(JaNeinWartelisteVS)
    * item[+]
      * insert addItemWithSource(9.2e, #choice, [[Andere Beratungs-, Förder- oder Heilmaßnahmen]], #DE-BW)
      * answerValueSet = Canonical(JaNeinWartelisteVS)
    * item[+]
      * insert addItem(9.3, #choice, [[Frühförderung]])
      * answerValueSet = Canonical(SEU_EF_NeinAbgeschlossenLaeuftGeplantVS)
    * item[+]
      * insert addItem(9.4, #choice, [[Ergotherapie]])
      * answerValueSet = Canonical(SEU_EF_NeinAbgeschlossenLaeuftGeplantVS)
    * item[+]
      * insert addItem(9.6, #choice, [[Physiotherapie]])
      * answerValueSet = Canonical(SEU_EF_NeinAbgeschlossenLaeuftGeplantVS)
    * item[+]
      * insert addItem(9.9, #choice, [[Integrative Betreuung]])
      * answerValueSet = Canonical(SEU_EF_NeinAbgeschlossenLaeuftGeplantVS)
//********************************************
// Medienkonsum
* item[+]
  * insert addGroup(10, Medienkonsum)
  * item[+]
    * insert addItem(10.1, #integer, Durchschnittlich pro Tag am Fernseher/Smartphone/Tablet/Spielkonsole/Computer)
    * insert uunit(h, "Stunden")
  * item[+]
    * insert addItem(10.2, #boolean, Fernsehgerät/Computer/Spielkonsole im Zimmer?)
//********************************************
// Arzt
* item[+]
  * insert addGroup(11, Arzt)
  * item[+]
    * insert addItem(11.2, #string, Name Kinderarzt)
  * item[+]
    * insert addItem(11.3, #string, Name Facharzt)
//********************************************
// Sonstiges
* item[+]
  * insert addGroup(12, Sonstiges)
  * item[+]
    * insert addItem(12.7, #boolean, Regelmäßig Sport)
//********************************************
// Informationen Eltern
* item[+]
  * insert addGroup(13, Informationen Eltern)
  * item[+]
    * insert addItemWithSource(13.5a, #choice, Berufstätigkeit 1. Elternteil, #DE-BW)
    * answerValueSet = Canonical(ErwerbsstatusInclSonstigesVS)
  * item[+]
    * insert addItem(13.6, #choice, Berufstätigkeit 2. Elternteil)
    * answerValueSet = Canonical(ErwerbsstatusVS)
