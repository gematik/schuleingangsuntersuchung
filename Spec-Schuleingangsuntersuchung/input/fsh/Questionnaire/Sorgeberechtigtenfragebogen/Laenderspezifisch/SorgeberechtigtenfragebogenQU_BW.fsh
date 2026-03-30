Instance: SorgeberechtigtenfragebogenBW
InstanceOf: Questionnaire
Usage: #example
Title: "Sorgeberechtigtenfragebogen BW"
Description: "Sorgeberechtigtenfragebogen BW"
* contained[+] = DeuevAnlage8LaenderkennzeichenVS
* contained[+] = GenderDEVS
* contained[+] = ErwerbsstatusInclSonstigesVS
* contained[+] = JaNeinWartelisteVS
* contained[+] = SEU_EF_MedienkonsumVS
* contained[+] = SEU_EF_DauerBWVS
* contained[+] = SEU_EF_BildungsabschlussBWVS
* contained[+] = UeberwiegendGesprocheneSpracheVS
* contained[+] = WohnsituationKindAlternativ4VS
* insert QMeta(1.0.0)
* id = "SEU-Sorgeberechtigtenfragebogen-BW"
* url = "https://www.oegd.de/fhir/seu/Questionnaire/SorgeberechtigtenfragebogenBW"
* title = "SEU Sorgeberechtigtenfragebogen BW"
* insert launchContext("patient", #Patient, "Patientenkontext")
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
  * item[+]
    * insert addItem(1.2, #string, Vorname des Kindes)
    * insert initialExpression("%patient.name[0].given[0]")
  * item[+]
    * insert addItem(1.6, #boolean, [[In Deutschland geboren]])
  * item[+]
    * insert addItemWithSource(1.6.2, #choice, [[Geburtsland]], #DE-ST)
    * insert enableWhenBoolean(1.6, =, false)
    * answerValueSet = Canonical(DeuevAnlage8LaenderkennzeichenVS)
  * item[+]
    * insert addItemWithSource(1.12e, #choice, [[Kind lebt überwiegend bei]], #DE-BW)
    * answerValueSet = Canonical(WohnsituationKindAlternativ4VS)
//********************************************
// Familiendaten
* item[+]
  * insert addItem(3, #group, [[Familiendaten]])
  * item[+]
    * insert addItem(3.1, #integer, [[Anzahl der Geschwister]])
  * item[+]
    * insert addItem(3.1.1, #group, [[Details Geschwister]])
    * repeats = true
    * insert enableWhenInteger(3.1, >, 0)
    * item[+]
      * insert addItem(3.1.1.1, #date, [[Geburtsdatum des Geschwisters]])
// Behinderungen
  * item[+]
    * insert addItem(3.2.6, #boolean, [[Hat das Kind eine körperliche, geistige oder seelische Behinderung?]])
    * item[+]
      * insert addItem(3.2.6.1, #text, [[Welche Behinderung?]])
      * insert enableWhenBoolean(3.2.6, =, true)
//********************************************
// Kinderbetreuung
* item[+]
  * insert addItem(4, #group, [[Kinderbetreuung]])
  * item[+]
    * insert addItemWithSource(4.0c, #integer, [[Wie viele Stunden ist das Kind pro Woche in einer Kindertageseinrichtung?]], #DE-BW)
    * insert uunit(h, "Stunden")
  * item[+]
    * insert addItemWithSource(4.1b, #choice, [[Wie lange besucht das Kind bis jetzt eine deutschsprachig Kindertageseinrichtung?]], #DE-BW)
    * answerValueSet = Canonical(SEU_EF_DauerBWVS)
  * item[+]
    * insert addItemWithSource(4.10, #boolean, [[Bekommt oder wartet das Kind auf eine spezielle Förderung oder Therapie?]], #DE-SN)
//********************************************
// Sprache
* item[+]
  * insert addItem(6, #group, [[Sprache]])
  * item[+]
    * insert addItemWithSource(6.1h, #choice, [[Welche Sprache(n) wurde(n) mit Ihrem Kind während der ersten drei Lebensjahre gesprochen (Familiensprache)?]], #DE-BW)
    * answerValueSet = Canonical(UeberwiegendGesprocheneSpracheVS)
  * item[+]
    * insert addItemWithSource(6.1i, #string, [[Welche andere(n) Sprache(n)?]], #DE-BW)
    * insert enableWhenCode(6.1h, =, SEU_UB_GesprocheneSpracheCS, 2)
    * insert enableWhenCode(6.1h, =, SEU_UB_GesprocheneSpracheCS, 8)
    * enableBehavior = #any
    * repeats = true
//********************************************
// Entwicklung
* item[+]
  * insert addItem(7, #group, [[Entwicklung]])
  * item[+]
    * insert addItem(7.12, #boolean, [[Sorgen Sie sich um die Entwicklung des Kindes?]])
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
      * insert addItemWithSource(8.3.2, #boolean, [[Ist Ihr Kind deswegen aktuell in Behandlung?]], #DE-BW)
      * insert enableWhenBoolean(8.3, =, true)
  * item[+]
    * insert addItem(8.6, #boolean, [[Brillenträger?]])
    * item[+]
      * insert addItemWithSource(8.6.1, #integer, [[Wenn ja, in welchem Alter hat Ihr Kind die Sehhilfe bekommen? (in Jahren)]], #DE-BW)
      * insert enableWhenBoolean(8.6, =, true)
      * insert uunit(a, "Jahre")
  * item[+]
    * insert addItem(8.9, #boolean, [[Schwere Hörstörung vorhanden?]])
    * item[+]
      * insert addItemWithSource(8.9.2, #boolean, [[Ist Ihr Kind deswegen aktuell in Behandlung?]], #DE-BW)
      * insert enableWhenBoolean(8.9, =, true)
  * item[+]
    * insert addItem(8.14, #boolean, [[Chronische Erkrankung vorhanden]])
    * item[+]
      * insert addItem(8.14.1, #string, [[Welche Erkrankung?]])
      * insert enableWhenBoolean(8.14, =, true)
      * repeats = true
  * item[+]
    * insert addItem(8.15, #boolean, [[Krankenhausaufenthalt]])
    * item[+]
      * insert addItem(8.15.3, #text, [[Grund für den Krankenhausaufenthalt?]])
      * insert enableWhenBoolean(8.15, =, true)
// Medikamente
  * item[+]
    * insert addItem(8.23, #boolean, [[Regelmäßige Medikamenteneinnahme]])
  * item[+]
    * insert addItem(8.23.1, #text, [[Welches Medikament]])
    * insert enableWhenBoolean(8.23, =, true)
    * repeats = true
  * item[+]
    * insert addItemWithSource(8.24, #boolean, [[Müssen Medikamente während der Zeit in der Kindertages-Einrichtung verabreicht werden?]], #DE-BW)
  * item[+]
    * insert addItemWithSource(8.24.1, #string, [[Wenn ja, welche?]], #DE-BW)
    * insert enableWhenBoolean(8.24, =, true)
    * repeats = true
// Operationen
  * item[+]
    * insert addItem(8.27, #boolean, [[Wurde das Kind operiert]])
    * item[+]
      * insert addItemWithSource(8.27.3, #text, [[Wenn ja, warum?]], #DE-BW)
      * insert enableWhenBoolean(8.27, =, true)
//********************************************
// Förderungen
* item[+]
  * insert addItem(9, #group, [[Förderungen]])
  * item[+]
    * insert addItemWithSource(9.2a, #choice, [[Sprachförderung]], #DE-BW)
    * answerValueSet = Canonical(JaNeinWartelisteVS)
    * item[+]
      * insert addItemWithSource(9.2a.1, #date, [[Begonnen]], #DE-BW)
      * insert enableWhenCode(9.2a, =, ExpandedYesNoIndicator, Y)
    * item[+]
      * insert addItemWithSource(9.2a.2, #date, [[Beendet]], #DE-BW)
      * insert enableWhenCode(9.2a, =, ExpandedYesNoIndicator, Y)
  * item[+]
    * insert addItemWithSource(9.2b, #choice, [[Logopädie]], #DE-BW)
    * answerValueSet = Canonical(JaNeinWartelisteVS)
    * item[+]
      * insert addItemWithSource(9.2b.1, #date, [[Begonnen]], #DE-BW)
      * insert enableWhenCode(9.2b, =, ExpandedYesNoIndicator, Y)
    * item[+]
      * insert addItemWithSource(9.2b.2, #date, [[Beendet]], #DE-BW)
      * insert enableWhenCode(9.2b, =, ExpandedYesNoIndicator, Y)
  * item[+]
    * insert addItemWithSource(9.2c, #choice, [[Ergotherapie]], #DE-BW)
    * answerValueSet = Canonical(JaNeinWartelisteVS)
    * item[+]
      * insert addItemWithSource(9.2c.1, #date, [[Begonnen]], #DE-BW)
      * insert enableWhenCode(9.2c, =, ExpandedYesNoIndicator, Y)
    * item[+]
      * insert addItemWithSource(9.2c.2, #date, [[Beendet]], #DE-BW)
      * insert enableWhenCode(9.2c, =, ExpandedYesNoIndicator, Y) 
  * item[+]
    * insert addItemWithSource(9.2d, #choice, [[Psychotherapie]], #DE-BW)
    * answerValueSet = Canonical(JaNeinWartelisteVS)
    * item[+]
      * insert addItemWithSource(9.2d.1, #date, [[Begonnen]], #DE-BW)
      * insert enableWhenCode(9.2d, =, ExpandedYesNoIndicator, Y)
    * item[+]
      * insert addItemWithSource(9.2d.2, #date, [[Beendet]], #DE-BW)
      * insert enableWhenCode(9.2d, =, ExpandedYesNoIndicator, Y)
  * item[+]
    * insert addItemWithSource(9.2e, #choice, [[Andere Beratungs-, Förder- oder Heilmaßnahmen]], #DE-BW)
    * answerValueSet = Canonical(JaNeinWartelisteVS)
    * item[+]
      * insert addItemWithSource(9.2e.1, #date, [[Begonnen]], #DE-BW)
      * insert enableWhenCode(9.2e, =, ExpandedYesNoIndicator, Y)
    * item[+]
      * insert addItemWithSource(9.2e.2, #date, [[Beendet]], #DE-BW)
      * insert enableWhenCode(9.2e, =, ExpandedYesNoIndicator, Y)
//********************************************
// Medienkonsum
* item[+]
  * insert addGroup(10, Medienkonsum)
  * item[+]
    * insert addItemWithSource(10.3a, #choice, [[Wie lange sieht das Kind durchschnittlich pro Tag Fernsehsendungen und Filme an und/oder spielt mit dem Smartphone/Tablet/Computer/ an der Spielkonsole? An einem Wochentag:]], #DE-BW)
    * answerValueSet = Canonical(SEU_EF_MedienkonsumVS)
  * item[+]
    * insert addItemWithSource(10.4a, #choice, [[Wie lange sieht das Kind durchschnittlich pro Tag Fernsehsendungen und Filme an und/oder spielt mit dem Smartphone/Tablet/Computer/ an der Spielkonsole? An einem Samstag/ Sonntag:]], #DE-BW)
    * answerValueSet = Canonical(SEU_EF_MedienkonsumVS)
//********************************************
// Sonstiges
* item[+]
  * insert addGroup(12, Sonstiges)
  * item[+]
    * insert addItemWithSource(12.6, #text, [[Was sind Stärken und Begabungen Ihres Kindes?]], #DE-BW)
//********************************************
// Informationen Eltern
* item[+]
  * insert addGroup(13, Informationen Eltern)
  * item[+]
    * insert addItemWithSource(13.1b, #choice, Schulabschluss 1. Elternteil, #DE-BW)
    * answerValueSet = Canonical(SEU_EF_BildungsabschlussBWVS)
  * item[+]
    * insert addItemWithSource(13.2b, #choice, Schulabschluss 2. Elternteil, #DE-BW)
    * answerValueSet = Canonical(SEU_EF_BildungsabschlussBWVS)
  * item[+]
    * insert addItemWithSource(13.5a, #choice, Berufstätigkeit 1. Elternteil, #DE-BW)
    * answerValueSet = Canonical(ErwerbsstatusInclSonstigesVS)  
  * item[+]
    * insert addItemWithSource(13.6a, #choice, Berufstätigkeit 2. Elternteil, #DE-BW)
    * answerValueSet = Canonical(ErwerbsstatusInclSonstigesVS) 
  * item[+]
    * insert addItemWithSource(13.17, #boolean, [[Deutsche Staatsangehörigkeit? Elternteil 1]], #DE-BW)
  * item[+]
    * insert addItemWithSource(13.18, #boolean, [[Deutsche Staatsangehörigkeit? Elternteil 2]], #DE-BW)
  * item[+]
    * insert addItemWithSource(13.19, #boolean, [[in Deutschland geboren? Elternteil 1]], #DE-BW)
  * item[+]
    * insert addItemWithSource(13.20, #boolean, [[in Deutschland geboren? Elternteil 2]], #DE-BW)
