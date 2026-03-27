Instance: Sorgeberechtigtenfragebogen_SN
InstanceOf: Questionnaire
Usage: #example
Title: "Sorgeberechtigtenfragebogen SN"
Description: "Sorgeberechtigtenfragebogen SN"
* contained[+] = DeuevAnlage8LaenderkennzeichenVS
* contained[+] = SEU_EF_NeinAbgeschlossenLaeuftGeplantVS
* contained[+] = SEU_EF_BildungsabschlussVS
* contained[+] = ErwerbsstatusVS
* contained[+] = RechtsLinksHaenderVS
* contained[+] = ChronischeKrankheitenVS
* contained[+] = AtopischeErkrankungenVS
* contained[+] = JaNeinWartelisteVS
* insert QMeta(1.0.0)
* id = "SEU-Sorgeberechtigtenfragebogen-SN"
* url = "https://www.oegd.de/fhir/seu/Questionnaire/SorgeberechtigtenfragebogenSN"
* title = "SEU Sorgeberechtigtenfragebogen SN"
* insert launchContext("patient", #Patient, "Patientenkontext")
* derivedFrom[0] = Canonical(Sorgeberechtigtenfragebogen)
//********************************************
* item[+]
  * insert addGroup(0, Schule & Vorgangsnummer)
  * item[+]
    * insert helpItem(0.1h, [[Bitte tragen Sie die Grundschule ein, an der Sie das Kind anmelden werden oder bereits angemeldet haben. Die Schule erhält eine Mitteilung über schulrelevante Ergebnisse.]])
  * item[+]
    * insert addItem(0.1, #string, Name der Schule)
//********************************************
// Personenbezogene Daten Kind
* item[+]
  * type = #group
  * linkId = "1"
  * text = "(1) Personenbezogene Daten Kind"
  * item[+]
    * insert addItem(1.1, #string, Nachname des Kindes)
    * insert initialExpression("%patient.name[0].family")
  * item[+]
    * insert addItem(1.2, #string, Vorname des Kindes)
    * insert initialExpression("%patient.name[0].given[0]")
  * item[+]
    * insert addItem(1.3, #date, Geburtsdatum)
    * insert initialExpression("%patient.birthdate")
  * item[+]
    * insert addItem(1.6, #boolean, In Deutschland geboren)
  * item[+]
    * insert addItemWithSource(1.6.2, #choice, [[Geburtsland]], #DE-ST)
    * insert enableWhenBoolean(1.6, =, false)
    * answerValueSet = Canonical(DeuevAnlage8LaenderkennzeichenVS)
  * item[+]
    * insert addItem(1.9, #string, PLZ)
    * insert regEx([["^[0-9]{5}$"]])
  * item[+]
    * insert addItem(1.10, #string, Wohnort)
  * item[+]
    * insert addItem(1.11, #string, Straße)
  * item[+]
    * insert addItem(1.11a, #string, Hausnummer)
//********************************************
// Personenbezogene Daten Personenberechtigter
* item[+]
  * insert addItem(2, #group, Personenbezogene Daten Personensorgeberechtigter)
  * repeats = true
  * item[+]
    * insert addItem(2.2, #string, Nachname)
    * insert initialExpression("%patient.name[0].family")
  * item[+]
    * insert addItem(2.3, #string, Vorname)
    * insert initialExpression("%patient.name[0].given[0]")
//********************************************
// Familiendaten
* item[+]
  * insert addItem(3, #group, Familiendaten)
  * item[+]
    * insert addItem(3.2, #group, Familiäre Vorgeschichte)
    * item[+]
      * insert helpItem(3.2.5-info, [[Bitte geben sie die chronischen Erkrankungen des Kindes an.]])
    * item[+]
      * insert addItem(3.2.5, #open-choice, Chronische Erkrankung)
      * answerValueSet = Canonical(ChronischeKrankheitenVS)
      * repeats = true
//********************************************
// Kinderbetreuung
* item[+]
  * insert addItem(4, #group, Kinderbetreuung)
  * item[+]
    * insert addItem(4.0b, #boolean, Ist das Kind in einem Kindergarten/einer Kindertageseinrichtung?)
  * item[+]
    * insert addItem(4.6b, #string, Name des Kindergartens)
    * enableWhen[+]
      * question = "4.0b"
      * operator = #=
      * answerBoolean = true
  * item[+]
    * insert addItemWithSource(4.6a, #text, Anschrift des Kindergartens, #DE-SN)
    * enableWhen[+]
      * question = "4.0b"
      * operator = #=
      * answerBoolean = true
//********************************************
// Schwangerschaft und Geburt
* item[+]
  * insert addItem(5, #group, [[Schwangerschaft und Geburt]])
  * item[+]
    * insert addItem(5.2, #integer, [[Geburtsgewicht (in Gramm)]])
    * insert uunit(g, "Gramm")
  * item[+]
    * insert addItem(5.3a, #integer, [[Geburtslänge (in cm)]])
    * insert uunit(cm, "cm")
  * item[+]
    * insert addItem(5.5, #boolean, [[Auffälligkeit bei der Geburt]])
    * item[+]
      * insert enableWhenBoolean(5.5, =, true)
      * insert addItem(5.5.1, #text, [[Welche Auffälligkeit?]])
//********************************************
// Sprache
* item[+]
  * insert addItem(6, #group, [[Sprache]])
  * item[+] insert addItemWithSource(6.1d, #boolean, [[Kind wächst mehrsprachig auf]], #DE-BY)
  * item[+]
    * insert addItem(6.4, #boolean, [[Sprachauffälligkeiten]])
//********************************************
// Entwicklung
* item[+]
  * insert addItem(7, #group, [[Entwicklung]])
  * item[+]
    * insert addItem(7.3, #integer, [[Freies Laufen ab? (Monate)]])
    * insert uunit(mo, "Monate")
  * item[+]
    * insert addItem(7.4, #integer, [[Erste Worte ab? (Monate)]])
    * insert uunit(mo, "Monate")
  * item[+]
    * insert addItem(7.6, #integer, [[Tagsüber ohne Windeln ab? (Jahre)]])
    * insert uunit(a, "Jahre")
  * item[+]
    * answerValueSet = Canonical(RechtsLinksHaenderVS)
    * insert addItem(7.9, #choice, [[Links- oder Rechtshänder]])
  * item[+]
    * insert addItem(7.12, #boolean, [[Sorgen Sie sich um die Entwicklung ihres Kindes?]])
    * item[+]
      * insert addItem(7.12.1, #text, [[Welche Sorgen]])
      * insert enableWhenBoolean(7.12, =, true)
//********************************************
// Erkrankungen und gesundheitliche Einschränkungen
* item[+]
  * insert addItem(8, #group, [[Erkrankungen und gesundheitliche Einschränkungen]])
  * item[+]
    * insert addItem(8.3, #boolean, [[Sehstörung vorhanden?]])
    * item[+]
      * insert addItem(8.3.1, #text, [[Welche Sehstörung]])
      * insert enableWhenBoolean(8.3, =, true)
  * item[+]
    * insert addItem(8.9, #boolean, [[Schwere Hörstörung vorhanden?]])
    * item[+]
      * insert addItem(8.9.1, #text, [[Welche Hörstörung]])
      * insert enableWhenBoolean(8.9, =, true)
  * item[+]
    * insert addItemWithSource(8.14b, #text, [[Bisher durchgemachte Erkrankungen, bspw. Windpocken oder Masern. Zeitlich nicht bestimmt]], #DE-BW)    
  * item[+]
    * insert addItem(8.15, #boolean, [[Krankenhausaufenthalt]])
    * item[+]
      * insert addItem(8.15.1, #text, [[Detaillierte Angaben zum Krankenhausaufenthalt?]])
      * insert enableWhenBoolean(8.15, =, true)
  * item[+]
    * answerValueSet = Canonical(AtopischeErkrankungenVS)  
    * insert addItem(8.16a, #open-choice, [[Besitzt das Kind Allergien?]])
  * item[+]
    * insert addItem(8.23, #boolean, [[Regelmäßige Medikamenteneinnahme]])
  * item[+]
    * insert addItem(8.23.1, #text, [[Welches Medikament]])
    * insert enableWhenBoolean(8.23, =, true)   
    * repeats = true
  * item[+]
    * insert addItem(8.27, #boolean, [[Wurde das Kind operiert]])
  * item[+]
    * insert addItemWithSource(8.31, #boolean, [[Einnässen tags]], #DE-SL)
  * item[+]
    * insert addItemWithSource(8.74, #boolean, [[Hauterkrankungen]], #DE-SN)
  * item[+]
    * insert addItemWithSource(8.75, #text, [[Welche Hauterkrankungen]], #DE-SN)
    * insert enableWhenBoolean(8.74, =, true)
  * item[+]
    * insert addItemWithSource(8.76, #boolean, [[Orthopädische Erkrankungen?]], #DE-SN)
  * item[+]
    * insert addItemWithSource(8.77, #text, [[Welche orthopädischen Erkrankungen]], #DE-SN)
    * insert enableWhenBoolean(8.76, =, true)
//********************************************
// Förderungen
* item[+]
  * insert addItem(9, #group, [[Förderungen]])
  * item[+]
    * insert addItemWithSource(9.1a, #boolean, [[Werden oder wurden bei dem Kind jemals Förder- oder Heilmaßnahmen durchgeführt? (Mehrfachnennung möglich)]], #DE-SL)    
  * item[+]
    * insert addGroup(9.1a.g, Therapien)
    * insert enableWhenBoolean(9.1a, =, true)
    * insert addSource(#DE-SN)
    * item[+]
      * insert addItem(9.2, #choice, [[Sprachtherapie]])
      * answerValueSet = Canonical(SEU_EF_NeinAbgeschlossenLaeuftGeplantVS)
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
      * insert addItem(9.3, #choice, [[Frühförderung]])
      * answerValueSet = Canonical(SEU_EF_NeinAbgeschlossenLaeuftGeplantVS)
    * item[+]
      * insert addItem(9.6, #choice, [[Physiotherapie]])
      * answerValueSet = Canonical(SEU_EF_NeinAbgeschlossenLaeuftGeplantVS)
    * item[+]
      * insert addItem(9.9, #choice, [[Integrative Betreuung]])
      * answerValueSet = Canonical(SEU_EF_NeinAbgeschlossenLaeuftGeplantVS)
    * item[+]
      * insert addItem(9.10, #text, [[Sonstige Förderung]])
//********************************************
// Medienkonsum
//********************************************
// Arzt
* item[+]
  * insert addGroup(11, Arzt)
  * item[+]
    * insert addItem(11.2, #string, Name Kinderarzt)
//********************************************
// Informationen Eltern
* item[+]
  * insert addGroup(13, [[Informationen Eltern]])
  * item[+]
    * insert addItem(13.1, #choice, [[Schulabschluss 1. Elternteil]])
    * answerValueSet = Canonical(SEU_EF_BildungsabschlussVS)
  * item[+]
    * insert addItem(13.5, #choice, [[Berufstätigkeit Personensorgeberechtigte Person 1 (Mutter)]])
    * answerValueSet = Canonical(ErwerbsstatusVS)
  * item[+]
    * insert addItemWithSource(13.17, #boolean, [[Deutsche Staatsangehörigkeit? Elternteil 1]], #DE-BW)
  * item[+]
    * insert addItemWithSource(13.19, #boolean, [[in Deutschland geboren? Elternteil 1]], #DE-BW)