Instance: ElternbefragungBE
InstanceOf: Questionnaire
Usage: #example
Title: "Elternbefragung BE"
Description: "Elternbefragung BE"
* contained[+] = SEU-EF-NeinAbgeschlossenLaeuftGeplantVS
* contained[+] = ISO6392_LanguageVS
* contained[+] = ErkrankungVS
* contained[+] = SEU_EF_SchulabschlussBerlinVS
* contained[+] = SEU_EF_BerufsbildungVS
* contained[+] = ErwerbsstatusInclSonstigesVS
* contained[+] = JaNeinWartelisteVS
* contained[+] = SEUEFMedienkonsumBerlinVS
* contained[+] = GenderDEVS
* contained[+] = DeuevAnlage8LaenderkennzeichenVS
* contained[+] = SorgenKindVS
* contained[+] = LebtBeiVS
* id = "SEU-Elternbefragung-BE"
* url = "https://www.oegd.de/fhir/seu/Questionnaire/Elternbefragung"
* title = "SEU Elternfragebogen Berlin"
* insert launchContext("patient", #Patient, "Patientenkontext")
* status = #draft
* item[+]
  * insert addItem(1, #group, [[Angaben zur Person]])
  * item[+]
    * insert addItem(1.1, #string, Nachname des Kindes)
    * insert initialExpression("%patient.name[0].family")
  * item[+]
    * insert addItem(1.2, #string, Vorname des Kindes)
    * insert initialExpression("%patient.name[0].given[0]")
  * item[+]
    * insert addItem(1.3, #string, PLZ)
  * item[+]
    * insert addItem(1.4, #string, Wohnort)
  * item[+]
    * insert addItem(1.5, #string, Straße)
  * item[+]
    * insert addItem(1.6, #string, Hausnummer)
  * item[+]
    * insert addItem(1.7, #string, Telefonnummer)
  * item[+]
    * insert addItem(1.8, #choice, Geschlecht)
    * answerValueSet = Canonical(GenderDEVS)
  * item[+]
    * insert addItem(1.9, #date, Geburtsdatum)
    * insert initialExpression("%patient.birthdate")
  * item[+]
    * insert addItem(1.10, #boolean, In Deutschland geboren)
  * item[+]
    * insert addItem(1.10.1, #date, Seit wann wohnt das Kind in Deutschland?)
    * insert enableWhenBoolean(1.10, =, true)
  * item[+]
    * insert addItem(1.11, #group, Geschwister unter 18 jahre)
    * repeats = true
    * item[+]
      * insert addItemWithSource(1.12, #string, [[Vorname des Geschwisters]], #DE-BE)
    * item[+]
      * insert addItem(1.13, #date, Geburtsdatum des Geschwisters)
  * item[+]
    * insert addItem(1.14, #group, [[Personenbezogene Daten Personenberechtigter]])
      * item[+]
        * insert addItem(1.15, #string, Nachname)
        * insert initialExpression("%patient.name[0].family")
      * item[+]
        * insert addItem(1.16, #string, Vorname)
        * insert initialExpression("%patient.name[0].given[0]") // überprüfen ob herkunftsland = geburtsland
      * item[+]
        * answerValueSet = Canonical(DeuevAnlage8LaenderkennzeichenVS)
        * insert addItem(1.17, #choice, [[Herkunftsland]])
      * item[+]
        * answerValueSet = Canonical(DeuevAnlage8LaenderkennzeichenVS)
        * insert addItem(1.18, #choice, Staatsangehörigkeit)
      * item[+]
        * answerValueSet = Canonical(DeuevAnlage8LaenderkennzeichenVS)
        * insert addItemWithSource(1.19, #choice, [[andere/weitere]], #DE-BE)
        * repeats = true
  * item[+]
    * answerValueSet = Canonical(ISO6392_LanguageVS)
    * insert addItem(1.20, #choice, [[Welche Sprachen werden Zuhause gesprochen?]])
  * item[+]
    * insert addItem(1.21, #string, Name Kinderarzt)
* item[+]
  * insert addItem(2, #group, [[Erkrankungen des Kindes (auch frühere)]])
  * item[+]
    * insert addItem(2.1, #choice, Erkrankung)
    * answerValueSet = Canonical(ErkrankungVS)
    * repeats = true
  * item[+]
    * insert addItemWithSource(2.4, #boolean, [[andere wichtige Erkrankungen/Allergien/Unfälle]], #DE-BE)
  * item[+]
    * insert enableWhenBoolean(2.4, =, true)
    * insert addItemWithSource(2.4.3, #text, [[wenn ja, welche]], #DE-BE)
  * item[+]
    * insert addItem(2.5, #boolean, [[Regelmäßige Medikamenteneinnahme]])
  * item[+]
    * insert addItem(2.5.1, #string, [[Welches Medikament]])
    * insert enableWhenBoolean(2.5, =, true)   
    * repeats = true
  * item[+]
    * insert addItemWithSource(2.6, #integer, [[Anzahl der Krankenhausaufenthalte/Operationen]], #DE-BE)

// to do 3.1
* item[+]
  * insert addItem(3, #group, [[Entwicklung des Kindes]])
  * item[+]
    * insert addItem(3.1, #group, [[Wurde/wird ihr Kind betreut wegen:]])
    * item[+]
      * insert addItemWithSource(3.1, #choice, [[Logopädie]], #DE-BW)
      * answerValueSet = Canonical(JaNeinWartelisteVS)
      * item[+]
        * insert addItemWithSource(3.1.1, #date, [[Begonnen]], #DE-BW)
        * insert enableWhenCode(3.1, =, ExpandedYesNoIndicator, Y)
      * item[+]
        * insert addItemWithSource(3.1.2, #date, [[Beendet]], #DE-BW)
        * insert enableWhenCode(3.1, =, ExpandedYesNoIndicator, Y)
    * item[+]
      * insert addItemWithSource(3.2, #choice, [[Ergotherapie]], #DE-BW)
      * answerValueSet = Canonical(JaNeinWartelisteVS)
      * item[+]
        * insert addItemWithSource(3.2.1, #date, [[Begonnen]], #DE-BW)
        * insert enableWhenCode(3.2, =, ExpandedYesNoIndicator, Y)
        * item[+]
          * insert addItemWithSource(3.2.2, #date, [[Beendet]], #DE-BW)
          * insert enableWhenCode(3.2, =, ExpandedYesNoIndicator, Y) 
    * item[+]
      * insert addItemWithSource(3.3, #choice, [[Psychotherapie]], #DE-BW)
      * answerValueSet = Canonical(JaNeinWartelisteVS)
      * item[+]
        * insert addItemWithSource(3.3.1, #date, [[Begonnen]], #DE-BW)
        * insert enableWhenCode(3.3, =, ExpandedYesNoIndicator, Y)
        * item[+]
          * insert addItemWithSource(3.3.2, #date, [[Beendet]], #DE-BW)
          * insert enableWhenCode(3.3, =, ExpandedYesNoIndicator, Y)
    * item[+]
      * insert addItem(3.4, #choice, [[Krankengymnastik]])
      * answerValueSet = Canonical(SEU-EF-NeinAbgeschlossenLaeuftGeplantVS)
  * item[+]
    * insert addItemWithSource(3.4, #choice, [[Machen Sie sich Sorgen um Ihr Kind wegen]], #DE-BE)
    * answerValueSet = Canonical(SorgenKindVS)
  * item[+]
    * insert addItemWithSource(3.5, #boolean, [[Nässt ihr Kind ein?]], #DE-BE)
* item[+]
  * insert addItem(4, #group, [[Entwicklung des Kindes]])
    * item[+]
      * insert addItemWithSource(4.1, #date, [[Seit wann besucht das Kind eine Kita?]], #DE-SN)
    * item[+]
      * insert addItem(4.2, #string, Name des Kindergartens)
    * item[+]
      * insert addItem(4.3, #date, [[Angabe des Datums, seit wann das Kind keine Kita mehr besucht.]])
    * item[+]
      * insert addItem(4.4, #boolean, Besucht ihr Kind eine andere Form der Tagesbetreuung?)
    * item[+]  
      * insert addItemWithSource(4.4a, #string, [[Art der Tagesbetreuung? ]], #DE-BB)
      * insert enableWhenBoolean(4.4, =, true)
* item[+]
  * insert addItem(5, #group, [[Lebensumfeld]])
    * item[+]
      * insert addItem(5.1, #choice, Kind lebt hauptsächlich bei)
      * answerValueSet = Canonical(LebtBeiVS)
    * item[+]
      * insert addItem(5.2, #choice, Schulabschluss 1. Elternteil)
      * answerValueSet = Canonical(SEU_EF_SchulabschlussBerlinVS)
    * item[+]
      * insert addItem(5.2.1, #choice, Schulabschluss 2. Elternteil)
      * answerValueSet = Canonical(SEU_EF_SchulabschlussBerlinVS)
    * item[+]
      * insert addItem(5.3, #choice, Berufsabschluss 1. Elternteil)
      * answerValueSet = Canonical(SEU_EF_BerufsbildungVS)
    * item[+]
      * insert addItem(5.3.1, #choice, Berufsabschluss 2. Elternteil)
      * answerValueSet = Canonical(SEU_EF_BerufsbildungVS)
    * item[+]
      * insert addItemWithSource(5.4, #choice, Berufstätigkeit 1. Elternteil, #DE-BW)
      * answerValueSet = Canonical(ErwerbsstatusInclSonstigesVS)
    * item[+]
      * insert addItemWithSource(5.4.1, #choice, Berufstätigkeit 2. Elternteil, #DE-BW)
      * answerValueSet = Canonical(ErwerbsstatusInclSonstigesVS) 
    * item[+]
      * insert addItemWithSource(5.5, #integer, Aktuell im Haushalt lebende Erwachsene, #DE-BB) 
    * item[+]
      * insert addItemWithSource(5.6, #integer, [[Wieviele Personen sind Raucher/Dampfer]], #DE-BE)
    * item[+]
      * insert addItemWithSource(5.7, #choice, [[Wie viele Stunden am Tag beschäftigt sich Ihr Kind im Durchschnitt mit elektronischen Geräten? (elektronische Geräte sind Fernsehen, DVD, Computer, Tablet, Smartphone, Playstation und andere) ]], #DE-BE)
      * answerValueSet = Canonical(SEUEFMedienkonsumBerlinVS)
    * item[+]
      * insert addItem(5.7.1, #boolean, Fernsehgerät/Computer/Spielkonsole im Zimmer?)
    * item[+]
      * insert addItemWithSource(5.7.3, #boolean, [[andere eigene elektronische Geräte]], #DE-BE)
    * item[+]
      * insert enableWhenBoolean(5.7.3, =, true)
      * insert addItemWithSource(5.7.3.1, #text, [[wenn ja, welche]], #DE-BE)